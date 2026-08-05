require "fileutils"
require "uri"

ROOT = File.expand_path("..", __dir__)
ORIGIN = File.join(ROOT, "origin")
PAGES = File.join(ROOT, "pages")
ASSETS = File.join(ROOT, "assets")
SOURCE = File.join(ROOT, "source-materials")
DERIVED_DIRS = %w[marp script html].map { |name| File.join(ROOT, name) }.freeze

CHAPTERS = [
  ["전체 학습 주제 개요 및 기대 학습 성과 이해", "learning-overview"],
  ["전압, 전류, 저항의 개념", "voltage-current-resistance"],
  ["전압 분배와 전력", "voltage-division-and-power"],
  ["직류와 교류", "dc-and-ac"],
  ["배터리 구조 및 동작 원리", "battery-structure-and-operation"],
  ["변압기, 코일, 인덕터, 솔레노이드", "transformer-coil-inductor-solenoid"],
  ["수동 소자의 이해", "passive-components"],
  ["접지와 중성선 그리고 노이즈", "ground-neutral-and-noise"],
  ["스위칭 소자와 제어 장치", "switching-devices-and-control"],
  ["NPN/PNP 센서와 PLC 입출력", "npn-pnp-sensors-plc-io"],
  ["회전기기와 발전기", "rotating-machines-and-generators"],
  ["다이오드와 전력 변환", "diodes-and-power-conversion"],
  ["모터 기동 기술", "motor-starting-technologies"],
  ["AC, DC, BLDC, 스테핑 모터와 서보 제어", "motor-types-and-servo-control"],
  ["전기회로의 보호와 모터 보호 장치", "circuit-and-motor-protection"]
].freeze

def normalize(value)
  value.unicode_normalize(:nfc)
end

def decode_path(value)
  normalize(URI::DEFAULT_PARSER.unescape(value))
end

index_path = Dir.glob(File.join(ORIGIN, "*35a38c8379f280c0bf36eba5e3b9e352.md")).first
abort "Origin index not found" unless index_path
index_text = File.read(index_path, encoding: "UTF-8")

ordered_links = index_text.scan(/^\[([^\]]+)\]\((.+)\)$/).map do |title, encoded_path|
  [normalize(title), decode_path(encoded_path)]
end
abort "Expected 15 chapters, found #{ordered_links.length}" unless ordered_links.length == CHAPTERS.length

source_lookup = Dir.glob(File.join(ORIGIN, "**", "*.md")).each_with_object({}) do |path, lookup|
  lookup[normalize(File.basename(path))] = path
end

chapter_sources = ordered_links.map.with_index do |(linked_title, linked_path), index|
  expected_title, slug = CHAPTERS[index]
  abort "Chapter order mismatch: #{linked_title} / #{expected_title}" unless linked_title.start_with?(expected_title)
  source_name = File.basename(linked_path)
  source_path = source_lookup[source_name]
  abort "Chapter source missing: #{source_name}" unless source_path
  [index + 1, expected_title, slug, source_path]
end

[PAGES, ASSETS, SOURCE, *DERIVED_DIRS].each { |dir| FileUtils.rm_rf(dir) }
[PAGES, ASSETS, SOURCE].each { |dir| FileUtils.mkdir_p(dir) }

toc_lines = ["# TOC", ""]
source_index = ["# 전기 전자 기초", ""]

chapter_sources.each do |number, display_title, slug, source_path|
  source_text = File.read(source_path, encoding: "UTF-8")
  original_title = source_text.lines.first.sub(/^#\s+/, "").strip
  body = source_text.lines.drop(1).join
  source_asset_dir = File.join(SOURCE, slug)
  FileUtils.mkdir_p(source_asset_dir)
  image_number = 0
  current_heading = display_title

  converted_lines = body.lines.map do |line|
    if line =~ /^(?:#){2,4}\s+(.+)$/
      current_heading = Regexp.last_match(1).gsub(/\*\*/, "").strip
      "#### #{current_heading}\n"
    elsif line =~ /^!\[([^\]]*)\]\((.+)\)\s*$/
      encoded_path = Regexp.last_match(2)
      decoded_path = decode_path(encoded_path)
      image_path = File.expand_path(decoded_path, File.dirname(source_path))
      abort "Image missing: #{decoded_path}" unless File.file?(image_path)
      image_number += 1
      image_name = format("%s-%02d.png", slug, image_number)
      FileUtils.cp(image_path, File.join(ASSETS, image_name))
      FileUtils.cp(image_path, File.join(source_asset_dir, image_name))
      "![#{current_heading}](../assets/#{image_name})\n"
    else
      line.gsub(/\[([^\]]+)\]\([^)]*\.md\)/, '**\1**')
    end
  end

  converted_body = converted_lines.join
  if slug == "learning-overview"
    overview_headings = [
      "학습을 시작하며",
      "완성까지 필요한 과정",
      "전체 학습 로드맵",
      "전기회로 학습",
      "PLC 학습",
      "전자회로 학습",
      "임베디드 학습",
      "운영체제 학습",
      "소프트웨어 학습",
      "ROS2 학습",
      "인공지능과 전체 과정"
    ]
    chunks = converted_body.split(/^---\s*$/, -1).map(&:strip).reject(&:empty?)
    abort "Unexpected learning overview sections: #{chunks.length}" unless chunks.length == overview_headings.length
    converted_body = chunks.each_with_index.map do |chunk, index|
      "#### #{overview_headings[index]}\n\n#{chunk}"
    end.join("\n\n---\n\n")
  end

  cleaned = converted_body
    .gsub(/[ \t]+\n/, "\n")
    .gsub(/\n{3,}/, "\n\n")
    .gsub(/\n(?:---\n)?\n####/, "\n\n---\n\n####")
    .strip

  page_name = format("01-%02d-%s.md", number, slug)
  page_title = "1-#{number}. #{original_title}"
  page_text = "# #{page_title}\n\n#{cleaned}\n"
  File.write(File.join(PAGES, page_name), page_text, encoding: "UTF-8")

  source_text_clean = page_text.gsub(%r{\../assets/(#{Regexp.escape(slug)}-[0-9]+\.png)}) do
    "#{slug}/#{Regexp.last_match(1)}"
  end
  File.write(File.join(SOURCE, "#{slug}.md"), source_text_clean, encoding: "UTF-8")

  toc_lines << "- [1-#{number}. #{original_title}](pages/#{page_name})"
  source_index << "- [#{original_title}](#{slug}.md)"
  puts format("%02d %-42s images=%d", number, slug, image_number)
end

File.write(File.join(ROOT, "TOC.md"), toc_lines.join("\n") + "\n", encoding: "UTF-8")
File.write(File.join(SOURCE, "index.md"), source_index.join("\n") + "\n", encoding: "UTF-8")

puts "Rebuilt pages, assets, source materials, and TOC from origin."
