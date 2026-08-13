require "fileutils"
require "pathname"
require "uri"

ROOT = Pathname.new(File.expand_path("..", __dir__))
ORIGIN = ROOT / "origin"
PAGES = ROOT / "pages"
ASSETS = ROOT / "assets"

SLUGS = [
  "learning-overview",
  "atoms-and-electrons",
  "voltage-current-resistance",
  "voltage-division-and-power",
  "dc-and-ac",
  "battery-structure-and-operation",
  "transformer-coil-inductor-solenoid",
  "passive-components",
  "ground-neutral-and-noise",
  "switching-devices-and-control",
  "npn-pnp-sensors-plc-io",
  "rotating-machines-and-generators",
  "diodes-and-power-conversion",
  "motor-starting-technologies",
  "motor-types-and-servo-control",
  "circuit-and-motor-protection"
].freeze

def decode_path(value)
  URI.decode_www_form_component(value)
end

index_path = ORIGIN.glob("*.md").first or abort "origin index not found"
entries = File.read(index_path, encoding: "UTF-8").scan(/^\[([^\]]+)\]\((.+\.md)\)$/)
abort "expected 16 chapters, found #{entries.length}" unless entries.length == SLUGS.length

FileUtils.rm_rf(PAGES)
FileUtils.rm_rf(ASSETS)
FileUtils.mkdir_p(PAGES)
FileUtils.mkdir_p(ASSETS)

toc = ["# TOC", ""]
copied_assets = []
asset_by_source = {}

entries.each_with_index do |(toc_title, encoded_source), index|
  number = index + 1
  slug = SLUGS[index]
  source_path = ORIGIN / decode_path(encoded_source)
  abort "missing chapter source: #{source_path}" unless source_path.file?

  text = File.read(source_path, encoding: "UTF-8")
  source_title = text[/^#\s+(.+)$/, 1]&.strip || toc_title
  chapter_title = "1-#{format('%02d', number)}. #{source_title}"
  text.sub!(/^#\s+.+$/, "# #{chapter_title}")

  image_number = 0
  text.gsub!(/!\[([^\]]*)\]\(([^)]+)\)/) do
    alt = Regexp.last_match(1)
    encoded_image = Regexp.last_match(2)
    decoded_image = decode_path(encoded_image)
    image_path = source_path.dirname / decoded_image
    abort "missing image: #{image_path}" unless image_path.file?

    canonical_source = image_path.realpath.to_s
    asset_name = asset_by_source[canonical_source]
    unless asset_name
      image_number += 1
      extension = image_path.extname.downcase
      extension = ".png" if extension.empty?
      asset_name = "#{format('%02d', number)}-#{slug}-#{format('%02d', image_number)}#{extension}"
      FileUtils.cp(image_path, ASSETS / asset_name)
      copied_assets << asset_name
      asset_by_source[canonical_source] = asset_name
    end
    meaningful_alt = alt.empty? || alt.match?(/^image(?:\.png)?$/i) ? source_title : alt
    "![#{meaningful_alt}](../assets/#{asset_name})"
  end

  # Notion 하위 페이지 링크는 책에서 끊어진 링크로 남기지 않고 문장으로 표시합니다.
  text.gsub!(/\[([^\]]+)\]\(([^)]+\.md)\)/) { "**#{Regexp.last_match(1)}**" }
  text.gsub!(/[ \t]+$/, "")
  text.gsub!(/\n{3,}/, "\n\n")
  text << "\n" unless text.end_with?("\n")

  page_name = "01-#{format('%02d', number)}-#{slug}.md"
  File.write(PAGES / page_name, text, encoding: "UTF-8")
  toc << "- [#{chapter_title}](pages/#{page_name})"
end

File.write(ROOT / "TOC.md", toc.join("\n") + "\n", encoding: "UTF-8")

puts "Imported #{entries.length} chapters and #{copied_assets.length} referenced images."
