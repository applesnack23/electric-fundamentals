require "cgi"
require "fileutils"
require "json"
require "pathname"

ROOT = Pathname.new(File.expand_path("..", __dir__))
PAGES = ROOT / "pages"
MARP = ROOT / "marp"
SCRIPT = ROOT / "script"
HTML = ROOT / "html"
RENDERED = ROOT / ".marp-rendered"
SKILL_ASSETS = Pathname.new("/Users/twiniex/.codex/skills/build-book-content/assets")

def plain_text(text)
  text
    .gsub(/!\[[^\]]*\]\([^)]+\)/, "")
    .gsub(/```.*?```/m, "")
    .gsub(/^\|.*$/m, "")
    .gsub(/^[#]{1,6}\s+/, "")
    .gsub(/^[-*]\s+/, "")
    .gsub(/\*\*|__|`/, "")
    .gsub(/<[^>]+>/, "")
    .gsub(/\s+/, " ")
    .strip
end

def sentences(text)
  value = plain_text(text)
  return [] if value.empty?

  value
    .gsub(/([.!?]|(?:습니다|입니다|합니다|됩니다|있습니다|없습니다|했습니다|됩니다))\s+/, "\\1\n")
    .split("\n")
    .map(&:strip)
    .reject { |line| line.length < 3 }
end

def short_text(text, limit)
  value = plain_text(text)
  value.length > limit ? "#{value[0, limit - 1].rstrip}…" : value
end

def visible_title(title, image: false)
  short_text(title, image ? 28 : 36)
end

def section_title(block, fallback)
  block[/^[#]{2,6}\s+(.+)$/, 1]&.strip || fallback
end

def visible_points(block)
  list = block.lines.map do |line|
    match = line.strip.match(/^[-*]\s+(.+)/)
    short_text(match[1], 64) if match
  end.compact
  candidates = list.empty? ? sentences(block) : list
  candidates.map { |item| short_text(item, 64) }.uniq.first(4)
end

def narration(block, title)
  prose = plain_text(block)
  return "#{title}의 핵심 원리와 실제 적용 방법을 차례로 알아보겠습니다." if prose.empty?

  prose
end

def notes(block)
  block.gsub("-->", "—>").strip
end

def script_fragment(number, title, narration)
  <<~HTML.strip
    <article>
      <h2>슬라이드 #{number}. #{CGI.escapeHTML(title)}</h2>
      <p class="screen">[화면] #{CGI.escapeHTML(title)}</p>
      <p class="narration-label">[내레이션]</p>
      <p>#{CGI.escapeHTML(narration).gsub("\n", "<br>")}</p>
    </article>
  HTML
end

def viewer_html(title, rendered_deck, fragments)
  srcdoc = CGI.escapeHTML(rendered_deck)
  config = JSON.generate({ scripts: fragments }).gsub("</", "<\\/")
  <<~HTML
    <!doctype html>
    <html lang="ko">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      <title>#{CGI.escapeHTML(title)} · 발표 뷰어</title>
      <link rel="stylesheet" href="viewer.css">
    </head>
    <body>
      <header>
        <strong>#{CGI.escapeHTML(title)}</strong>
        <span id="position" aria-live="polite"></span>
      </header>
      <main id="workspace">
        <section class="deck-pane"><iframe id="deck" title="Marp 발표자료" srcdoc="#{srcdoc}"></iframe></section>
        <div id="divider" role="separator" tabindex="0" aria-label="발표자료와 대본 너비 조절" aria-orientation="vertical" aria-valuemin="25" aria-valuemax="75" aria-valuenow="60"><span></span></div>
        <section class="script-pane"><div id="script"></div></section>
      </main>
      <script>window.VIEWER_CONFIG=#{config};</script>
      <script src="viewer.js"></script>
    </body>
    </html>
  HTML
end

FileUtils.rm_rf(MARP)
FileUtils.rm_rf(SCRIPT)
FileUtils.rm_rf(HTML)
FileUtils.rm_rf(RENDERED)
[MARP, SCRIPT, HTML, RENDERED].each { |dir| FileUtils.mkdir_p(dir) }
FileUtils.cp(SKILL_ASSETS / "marp-theme.css", MARP / "theme.css")
theme_path = MARP / "theme.css"
theme = File.read(theme_path, encoding: "UTF-8")
theme.sub!(/h2 \{[^}]+\}/, 'h2 { color: #263238; font-size: 50px; line-height: 1.15; letter-spacing: -0.03em; margin-bottom: 34px; }')
File.write(theme_path, theme, encoding: "UTF-8")
FileUtils.cp(SKILL_ASSETS / "viewer.css", HTML / "viewer.css")
FileUtils.cp(SKILL_ASSETS / "viewer.js", HTML / "viewer.js")

manifest = []

PAGES.glob("01-*.md").sort.each do |page_path|
  basename = page_path.basename(".md").to_s
  source = File.read(page_path, encoding: "UTF-8")
  book_title = source[/^#\s+(.+)$/, 1]&.strip || basename
  body = source.sub(/^#\s+.+\n?/, "").strip
  blocks = body.split(/^---\s*$/).map(&:strip).reject(&:empty?)

  slides = []
  narrations = []
  titles = []

  opening = "#{book_title}의 핵심 개념을 실제 전기·전자 시스템과 연결해 학습하겠습니다."
  slides << "<!-- _class: title -->\n\n# #{book_title}\n\n전기·전자 기초"
  narrations << "안녕하세요. #{book_title} 내용을 시작하겠습니다. #{opening}"
  titles << book_title

  blocks.each_with_index do |block, index|
    heading = section_title(block, index.zero? ? "학습 개요" : "핵심 개념 #{index + 1}")
    image = block[/!\[[^\]]*\]\(([^)]+)\)/, 1]
    points = visible_points(block)
    points = ["#{heading}의 원리와 적용 방법을 알아봅니다."] if points.empty?
    slide_title = visible_title(heading, image: !image.nil?)
    image_directive = image ? "![bg right:42% contain](#{image})\n\n" : ""
    bullets = points.map { |point| "- #{point}" }.join("\n")
    full_notes = notes(block)
    slides << "## #{slide_title}\n\n#{image_directive}#{bullets}\n\n<!--\n발표자 노트 · 원문\n\n#{full_notes}\n-->"
    narrations << narration(block, heading)
    titles << heading
  end

  closing_title = "핵심 내용 정리"
  closing = "#{book_title}에서 살펴본 개념은 이후 장의 회로 구성과 장치 제어를 이해하는 기초가 됩니다. 핵심 용어와 동작 흐름을 다시 확인한 뒤 다음 내용으로 넘어가겠습니다."
  slides << "## #{closing_title}\n\n- 핵심 용어의 의미를 설명할 수 있습니다.\n- 구성 요소의 역할과 연결 관계를 구분할 수 있습니다.\n- 실제 회로나 장치에 기본 원리를 적용할 수 있습니다."
  narrations << closing
  titles << closing_title

  marp = <<~MD
    ---
    marp: true
    theme: mechanical
    size: 16:9
    paginate: true
    html: true
    footer: "전기·전자 기초"
    ---

    #{slides.join("\n\n---\n\n")}
  MD
  File.write(MARP / "#{basename}.md", marp, encoding: "UTF-8")

  script_sections = narrations.each_with_index.map do |text, index|
    <<~MD.strip
      ## 슬라이드 #{index + 1}. #{titles[index]}

      [화면] #{titles[index]}

      [내레이션]

      #{text}
    MD
  end
  script = "# #{book_title} — 유튜브 영상 스크립트\n\n#{script_sections.join("\n\n---\n\n")}\n"
  File.write(SCRIPT / "#{basename}.md", script, encoding: "UTF-8")

  manifest << {
    basename: basename,
    title: book_title,
    slide_count: slides.length,
    titles: titles,
    narrations: narrations
  }
end

File.write(RENDERED / "manifest.json", JSON.pretty_generate(manifest), encoding: "UTF-8")
puts "Generated #{manifest.length} Marp decks and scripts (#{manifest.sum { |item| item[:slide_count] }} slides)."
