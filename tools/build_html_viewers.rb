require "cgi"
require "json"
require "pathname"

ROOT = Pathname.new(File.expand_path("..", __dir__))
HTML = ROOT / "html"
RENDERED = ROOT / ".marp-rendered"

def fragment(number, title, narration)
  <<~HTML.strip
    <article>
      <h2>슬라이드 #{number}. #{CGI.escapeHTML(title)}</h2>
      <p class="screen">[화면] #{CGI.escapeHTML(title)}</p>
      <p class="narration-label">[내레이션]</p>
      <p>#{CGI.escapeHTML(narration).gsub("\n", "<br>")}</p>
    </article>
  HTML
end

manifest = JSON.parse(File.read(RENDERED / "manifest.json", encoding: "UTF-8"))

manifest.each do |item|
  basename = item.fetch("basename")
  title = item.fetch("title")
  rendered_path = RENDERED / "#{basename}.html"
  abort "missing rendered deck: #{rendered_path}" unless rendered_path.file?

  rendered = CGI.escapeHTML(File.read(rendered_path, encoding: "UTF-8"))
  fragments = item.fetch("titles").each_with_index.map do |slide_title, index|
    fragment(index + 1, slide_title, item.fetch("narrations")[index])
  end
  config = JSON.generate({ scripts: fragments }).gsub("</", "<\\/")

  viewer = <<~HTML
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
        <section class="deck-pane"><iframe id="deck" title="Marp 발표자료" srcdoc="#{rendered}"></iframe></section>
        <div id="divider" role="separator" tabindex="0" aria-label="발표자료와 대본 너비 조절" aria-orientation="vertical" aria-valuemin="25" aria-valuemax="75" aria-valuenow="60"><span></span></div>
        <section class="script-pane"><div id="script"></div></section>
      </main>
      <script>window.VIEWER_CONFIG=#{config};</script>
      <script src="viewer.js"></script>
    </body>
    </html>
  HTML
  File.write(HTML / "#{basename}.html", viewer, encoding: "UTF-8")
end

puts "Built #{manifest.length} synchronized HTML viewers."
