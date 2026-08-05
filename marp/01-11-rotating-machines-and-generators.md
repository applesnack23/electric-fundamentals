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
<!-- _class: title-slide -->

# 1-11. 회전기기와 발전기

전기·전자 실무 기초

---

## 단상과 회전체

- 자석을 가운데 축에 고정하고, 주변의 코일에 단상 교류 전원을 인가하면 코일 주위에 자기장이 형성됩니다.
- 하지만 단상 전원은 자기장의 방향이 앞뒤로만 반복해서 변하기 때문에 자석을 어느 방향으로 회전시켜야 하는지를 결정하지 못합니다.
- 따라서 일반적인 단상 AC 모터는 스스로 회전하지 못하거나, 회전 방향을 결정하기 위한 보조 권선이나 콘덴서 등의 추가 회로가 필요합니다.

---

## 단상과 회전체

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-01.png" alt="단상과 회전체">

</div>

---

## 3상과 회전체

- 3개의 코일에 각각 120°의 위상차를 갖는 3상 전원을 공급하면 시간에 따라 자기장이 연속적으로 회전하게 됩니다.
- 이 회전 자기장에 의해 자석은 일정한 방향으로 회전하게 되며, 별도의 보조 회로 없이도 안정적으로 회전할 수 있습니다.
- 이것이 산업용 모터에서 3상 전원을 사용하는 가장 큰 이유입니다.

---

## 3상과 회전체

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-02.png" alt="3상과 회전체">

</div>

---

## 3상 3선식의 결선

- 3상 3선식은 회전체에 3개의 상(R, S, T)을 연결하여 전원을 공급하는 방식입니다.
- 3개의 코일에 각각 3상 교류를 공급하면 회전 자기장이 형성되고, 회전체는 일정한 방향으로 회전합니다.
- 이 방식은 구조가 단순하고 효율이 높아 산업용 모터에서 가장 많이 사용됩니다.

---

## 3상 3선식의 결선

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-03.png" alt="3상 3선식의 결선">

</div>

---

## 3상 3선식과 발전기

- 이번에는 반대로 회전체를 외부의 힘으로 회전시켜 보겠습니다.
- 회전하는 자석이 코일 주변의 자기장을 변화시키면 코일에는 전압이 유도됩니다.
- 이 원리를 전자기 유도라고 하며, 모터와 반대의 동작이 이루어집니다.
- 즉, 모터는 전기를 이용해 회전력을 만들고, 발전기는 회전력을 이용해 전기를 만들어 냅니다.
- 풍력 발전기, 수력 발전기, 화력 발전기의 발전기 역시 모두 같은 원리를 이용합니다.

---

## 3상 3선식과 발전기

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-04.png" alt="3상 3선식과 발전기">

</div>

---

## 3상 3선식의 일반적인 결선

- 산업 현장에서는 3상 3선식을 그림과 같은 형태로 많이 표현합니다.
- 3개의 상(R, S, T)이 각각 코일에 연결되어 회전 자기장을 형성합니다.

---

## 3상 3선식의 일반적인 결선

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-05.png" alt="3상 3선식의 일반적인 결선">

</div>

---

## 3상 4선식과 발전기

- 회전체에 3상의 전원을 4개의 선으로 입력하는 방식으로 3개의 코일에 3상 4선식으로 결선하여 안정적인 전압원을 공급 3상 3선식과 마찬가지로 회전체에서 전력을…

---

## 3상 4선식과 발전기

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-06.png" alt="3상 4선식과 발전기">

</div>

---

## 3상 4선식의 일반적인 결선

- 3상 4선식은 산업용 분전반에서 가장 많이 사용하는 전원 방식입니다.
- 3상 전원과 단상 전원을 동시에 사용할 수 있기 때문에 공장과 대형 건물에서 널리 사용됩니다.

---

## 3상 4선식의 일반적인 결선

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-07.png" alt="3상 4선식의 일반적인 결선">

</div>

---

## 3상 3선식 (△ 델타 결선)

- 380V 3상 전원
- 380V 단상 전원 × 3 (RS, ST, TR)

---

## 3상 3선식 (△ 델타 결선)

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-08.png" alt="3상 3선식 (△ 델타 결선)">

</div>

---

## 3상 4선식 (Y 스타 결선)

- 380V 3상 전원
- 380V 단상 전원 × 3 (RS, ST, TR)
- 220V 단상 전원 × 3 (RN, SN, TN)
- RS, ST, TR은 선간전압(Line Voltage)
- RN, SN, TN은 상전압(Phase Voltage)

---

## 3상 4선식 (Y 스타 결선)

<div class="image-grid single">

<img src="../assets/rotating-machines-and-generators-09.png" alt="3상 4선식 (Y 스타 결선)">

</div>
