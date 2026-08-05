require "json"
require "fileutils"

ROOT = File.expand_path("..", __dir__)
PAGES = File.join(ROOT, "pages")
MARP = File.join(ROOT, "marp")
SCRIPT = File.join(ROOT, "script")
HTML = File.join(ROOT, "html")

[MARP, SCRIPT, HTML].each { |dir| FileUtils.mkdir_p(dir) }

def clean_text(text)
  text
    .gsub(/!\[[^\]]*\]\([^)]+\)/, "")
    .gsub(/\$\$.*?\$\$/m, "")
    .gsub(/```.*?```/m, "")
    .gsub(/^\|.*$/m, "")
    .gsub(/^---\s*$/, "")
    .gsub(/\s+/, " ")
    .strip
end

def sentences(text)
  clean_text(text)
    .gsub(/((?:습니다|했습니다|됩니다|입니다|합니다|된다|했다|이다|다)[.!?]?|[.!?])\s+/, "\\1\n")
    .split("\n")
    .map(&:strip)
    .reject(&:empty?)
end

def visible_points(text, max = 5)
  list_items = text.lines.map do |line|
    stripped = line.strip
    next unless stripped.match?(/^[-*]\s+/)
    stripped.sub(/^[-*]\s+/, "").gsub(/\*\*/, "").strip
  end.compact
  candidates = list_items.empty? ? sentences(text) : list_items
  candidates.reject { |item| item.length < 3 }.first(max).map do |item|
    item.length > 92 ? "#{item[0, 89]}…" : item
  end
end

def narration(title, text, image_only: false)
  source = sentences(text)
  detail = source.first(image_only ? 3 : 5).map do |item|
    item.match?(/[.!?다요]$/) ? item : "#{item}."
  end.join(" ")

  if image_only
    return detail unless detail.empty?
    return "#{title}의 구성 요소와 연결 관계를 순서대로 확인하겠습니다."
  end
  detail.empty? ? "#{title}의 핵심 개념을 정리하겠습니다." : detail
end

def parse_page(path)
  lines = File.readlines(path, encoding: "UTF-8")
  title = lines.shift.sub(/^#\s+/, "").strip
  intro = []
  sections = []
  current = nil

  lines.each do |line|
    if line =~ /^####\s+(.+)$/
      sections << current if current
      current = { title: Regexp.last_match(1).strip, lines: [] }
    elsif current
      current[:lines] << line
    else
      intro << line
    end
  end
  sections << current if current
  [title, intro.join, sections]
end

def split_section(section)
  text = section[:lines].join
  images = text.scan(/!\[([^\]]*)\]\(([^)]+)\)/)
  without_images = text.gsub(/!\[[^\]]*\]\([^)]+\)/, "")
  points = visible_points(without_images)
  slides = []

  unless points.empty?
    slides << {
      title: section[:title],
      kind: :text,
      points: points,
      source_text: without_images
    }
  end

  images.each_slice(2).with_index do |group, index|
    slides << {
      title: images.length > 2 ? "#{section[:title]} · 그림 #{index + 1}" : section[:title],
      kind: :images,
      images: group,
      source_text: without_images
    }
  end

  if slides.empty?
    slides << { title: section[:title], kind: :text, points: ["핵심 개념을 그림과 함께 확인했습니다."], source_text: "" }
  end
  slides
end

def marp_header
  <<~MD
    ---
    marp: true
    theme: default
    paginate: true
    size: 16:9
    html: true
    style: |
      :root {
        --navy: #0b172a;
        --blue: #0f5b78;
        --cyan: #43c6c8;
        --orange: #ff9f43;
        --paper: #f4f7f9;
        --ink: #172033;
      }
      section {
        width: 1280px;
        height: 720px;
        box-sizing: border-box;
        padding: 52px 70px 47px;
        background: linear-gradient(135deg, #f8fbfc 0%, #edf4f6 100%);
        color: var(--ink);
        font-family: "Pretendard", "Noto Sans KR", "Apple SD Gothic Neo", sans-serif;
        font-size: 23px;
        line-height: 1.45;
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        overflow: hidden;
      }
      section::after {
        color: #5b7184;
        font-size: 15px;
        right: 47px;
        bottom: 21px;
      }
      h1 {
        color: var(--navy);
        font-size: 44px;
        line-height: 1.16;
        letter-spacing: -0.035em;
        margin: 0 0 28px;
        border-left: 8px solid var(--cyan);
        padding-left: 20px;
      }
      h2 {
        color: var(--navy);
        font-size: 35px;
        line-height: 1.18;
        letter-spacing: -0.03em;
        margin: 0 0 28px;
      }
      strong { color: var(--blue); }
      ul { margin: 16px 0 0 12px; }
      li { margin: 10px 0; padding-left: 7px; }
      code { background: #e3edf1; color: var(--blue); }
      section.title-slide {
        background: linear-gradient(135deg, #081321 0%, #0c3550 62%, #0f6676 100%);
        color: white;
        display: flex;
        flex-direction: column;
        justify-content: center;
      }
      section.title-slide h1 {
        color: white;
        font-size: 52px;
        max-width: 1000px;
        border-left-color: var(--orange);
      }
      section.title-slide p { color: #c9e8ec; font-size: 23px; margin-left: 30px; }
      .image-grid {
        display: grid;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        grid-template-rows: minmax(0, 1fr);
        gap: 28px;
        width: 100%;
        flex: 1 1 auto;
        min-height: 0;
        align-items: center;
        justify-items: center;
      }
      .image-grid.single { grid-template-columns: 1fr; }
      .image-grid img {
        width: 100%;
        height: 100%;
        max-width: 100%;
        max-height: 100%;
        min-width: 0;
        min-height: 0;
        object-fit: contain;
        border-radius: 8px;
        box-shadow: 0 8px 24px rgba(11, 23, 42, 0.16);
        background: white;
      }
      .takeaway {
        margin-top: 19px;
        padding: 16px 20px;
        border-left: 5px solid var(--orange);
        background: rgba(255,255,255,.75);
      }
    ---
  MD
end

def html_wrapper(title, slug, scripts)
  json = JSON.generate(scripts).gsub("</", "<\\/")
  <<~HTML
    <!doctype html>
    <html lang="ko">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>#{title} · 발표 뷰어</title>
      <style>
        * { box-sizing: border-box; }
        html, body { height: 100%; margin: 0; background: #08111f; color: #eaf2f5; font-family: Pretendard, "Noto Sans KR", sans-serif; }
        body { display: grid; grid-template-rows: 1fr 68px; overflow: hidden; }
        main { display: grid; grid-template-columns: minmax(0, 2fr) minmax(360px, 1fr); min-height: 0; }
        .stage { display: flex; align-items: center; justify-content: center; background: #02060d; padding: 18px; min-width: 0; min-height: 0; cursor: pointer; }
        iframe { width: 100%; height: 100%; border: 0; background: #02060d; box-shadow: 0 18px 60px rgba(0,0,0,.45); pointer-events: none; }
        aside { min-width: 0; border-left: 1px solid #213247; background: #0d1b2b; padding: 34px 38px; overflow: auto; }
        .eyebrow { color: #52d3d6; font-size: 14px; font-weight: 700; letter-spacing: .12em; text-transform: uppercase; }
        h1 { font-size: 25px; line-height: 1.3; margin: 10px 0 28px; color: white; }
        #script { white-space: pre-wrap; font-size: 20px; line-height: 1.75; color: #dce8ec; }
        footer { display: grid; grid-template-columns: 1fr auto 1fr; align-items: center; gap: 18px; padding: 0 24px; background: #07101d; border-top: 1px solid #213247; }
        .left, .right { display: flex; align-items: center; gap: 10px; }
        .right { justify-content: flex-end; }
        button { border: 1px solid #36506a; background: #14283c; color: white; border-radius: 8px; padding: 10px 18px; font-size: 16px; cursor: pointer; }
        button:hover { background: #1a3d55; }
        button:disabled { opacity: .35; cursor: default; }
        #counter { color: #9db1bf; font-variant-numeric: tabular-nums; }
        .hint { color: #71899b; font-size: 14px; }
        @media (max-width: 1100px) {
          main { grid-template-columns: 1fr; grid-template-rows: auto 1fr; }
          .stage { padding: 8px; }
          aside { border-left: 0; border-top: 1px solid #213247; padding: 20px 24px; }
          #script { font-size: 17px; }
        }
      </style>
    </head>
    <body>
      <main>
        <section class="stage"><iframe id="deck" src="#{slug}-deck.html#1" title="#{title} Marp 발표자료"></iframe></section>
        <aside>
          <div class="eyebrow">YouTube Recording Script</div>
          <h1>#{title}</h1>
          <div id="script"></div>
        </aside>
      </main>
      <footer>
          <div class="left"><button id="prev">← 이전</button><span class="hint">슬라이드와 대본 함께 이동 · ← / → 방향키</span></div>
        <div id="counter"></div>
        <div class="right"><button id="next">다음 →</button></div>
      </footer>
      <script>
        const scripts = #{json};
        const deck = document.getElementById('deck');
        const deckBase = '#{slug}-deck.html';
        const stage = document.querySelector('.stage');
        const scriptBox = document.getElementById('script');
        const counter = document.getElementById('counter');
        const prev = document.getElementById('prev');
        const next = document.getElementById('next');
        let index = 0;
        function render(updateDeck = true) {
          index = Math.max(0, Math.min(index, scripts.length - 1));
          scriptBox.textContent = scripts[index];
          counter.textContent = `${index + 1} / ${scripts.length}`;
          prev.disabled = index === 0;
          next.disabled = index === scripts.length - 1;
          if (updateDeck) deck.src = `${deckBase}#${index + 1}`;
        }
        function go(delta) { index += delta; render(true); }
        prev.addEventListener('click', () => go(-1));
        next.addEventListener('click', () => go(1));
        stage.addEventListener('click', (event) => {
          const bounds = stage.getBoundingClientRect();
          go(event.clientX < bounds.left + bounds.width / 2 ? -1 : 1);
        });
        window.addEventListener('keydown', (event) => {
          if (['ArrowRight', 'PageDown', ' '].includes(event.key)) { event.preventDefault(); go(1); }
          if (['ArrowLeft', 'PageUp'].includes(event.key)) { event.preventDefault(); go(-1); }
          if (event.key === 'Home') { index = 0; render(true); }
          if (event.key === 'End') { index = scripts.length - 1; render(true); }
        });
        render(false);
      </script>
    </body>
    </html>
  HTML
end

catalog = []

Dir[File.join(PAGES, "[0-9][0-9]-[0-9][0-9]-*.md")].sort.each do |path|
  title, intro, sections = parse_page(path)
  slug = File.basename(path, ".md")
  slides = []
  scripts = []

  slides << "<!-- _class: title-slide -->\n\n# #{title}\n\n전기·전자 실무 기초"
  intro_text = sentences(intro).first(4).join(" ")
  scripts << ["안녕하세요. #{title} 내용을 시작하겠습니다.", intro_text].reject(&:empty?).join(" ")

  sections.each do |section|
    split_section(section).each do |slide|
      if slide[:kind] == :text
        bullets = slide[:points].map { |point| "- #{point}" }.join("\n")
        content = "## #{slide[:title]}\n\n#{bullets}"
        scripts << narration(slide[:title], slide[:source_text])
      else
        klass = slide[:images].length == 1 ? "image-grid single" : "image-grid"
        imgs = slide[:images].map do |alt, src|
          escaped_alt = alt.gsub('"', '&quot;')
          escaped_src = src.gsub('"', '&quot;')
          %(<img src="#{escaped_src}" alt="#{escaped_alt}">)
        end.join("\n")
        content = "## #{slide[:title]}\n\n<div class=\"#{klass}\">\n\n#{imgs}\n\n</div>"
        scripts << narration(slide[:title], slide[:source_text], image_only: true)
      end
      slides << content
    end
  end

  marp_text = marp_header + slides.join("\n\n---\n\n") + "\n"
  File.write(File.join(MARP, "#{slug}.md"), marp_text, encoding: "UTF-8")

  script_pages = scripts.each_with_index.map do |text, index|
    "# 슬라이드 #{index + 1}\n\n#{text}"
  end
  File.write(File.join(SCRIPT, "#{slug}.md"), script_pages.join("\n\n---\n\n") + "\n", encoding: "UTF-8")
  File.write(File.join(HTML, "#{slug}.html"), html_wrapper(title, slug, scripts), encoding: "UTF-8")
  catalog << [title, slug, slides.length]

  puts "#{slug}: #{slides.length} slides"
end

cards = catalog.map do |title, slug, count|
  %(<a class="card" href="#{slug}.html"><strong>#{title}</strong><span>#{count} slides</span></a>)
end.join("\n")

File.write(File.join(HTML, "index.html"), <<~HTML, encoding: "UTF-8")
  <!doctype html>
  <html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>전기·전자 실무 기초 · 발표 뷰어</title>
    <style>
      * { box-sizing: border-box; }
      body { margin: 0; background: #08111f; color: #eaf2f5; font-family: Pretendard, "Noto Sans KR", sans-serif; }
      main { width: min(1180px, calc(100% - 40px)); margin: 0 auto; padding: 70px 0; }
      h1 { margin: 0 0 12px; font-size: clamp(34px, 5vw, 58px); }
      p { margin: 0 0 42px; color: #9db1bf; font-size: 18px; }
      .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(290px, 1fr)); gap: 16px; }
      .card { display: flex; flex-direction: column; gap: 14px; min-height: 126px; padding: 25px; border: 1px solid #274159; border-radius: 14px; background: #0d1b2b; color: white; text-decoration: none; }
      .card:hover { border-color: #43c6c8; transform: translateY(-2px); }
      .card strong { font-size: 20px; line-height: 1.35; }
      .card span { margin-top: auto; color: #72d9da; font-size: 14px; }
    </style>
  </head>
  <body><main><h1>전기·전자 실무 기초</h1><p>발표 화면과 촬영 대본이 함께 움직이는 강의용 뷰어입니다.</p><div class="grid">#{cards}</div></main></body>
  </html>
HTML
