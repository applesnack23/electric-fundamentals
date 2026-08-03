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

## 학습 목표

- 회전자와 고정자가 회전 자기장을 만드는 원리를 이해할 수 있습니다.
- 단상과 3상 전원에서 회전 특성이 달라지는 이유를 설명할 수 있습니다.
- Y 결선과 △ 결선의 전압 관계를 구분할 수 있습니다.

---

## 단상과 회전체

- 자석을 그림과 같이 가운데를 고정 코일에 전류를 흐르게 하면 코일 주위에 자기장이 형성 이때, 단상 전원은 자석의 회전 방향을 결정할 수 없습니다.
- (AC 모터 원리에서 단상 모터의 경우 방향을 결정하는 추가적인 회로가 반드시 필요)

---

## 단상과 회전체

<div class="image-grid single">

<img src="../assets/rotating-machines-01.png" alt="단상과 회전체 설명 그림 1">

</div>

---

## 3상과 회전체

- 자석을 그림과 같이 가운데를 고정 단상과 동일하게 코일에 전류를 흐르게 하면 코일 주위에 자기장이 형성 이때, 3상 전원은 자석 회전의 방향을 결정할 수 있습니다.

---

## 3상과 회전체

<div class="image-grid single">

<img src="../assets/rotating-machines-02.png" alt="3상과 회전체 설명 그림 2">

</div>

---

## 3상 3선식의 결선

- 회전체에 3상 전원을 3개의 선으로 입력하는 방식 3개의 코일에 3상 3선식으로 결선하여 안정적인 전압원을 공급

---

## 3상 3선식의 결선

<div class="image-grid single">

<img src="../assets/rotating-machines-03.png" alt="3상 3선식의 결선 설명 그림 3">

</div>

---

## 3상 3선식과 발전기

- 이번에는 회전체에 전원을 공급하는 대신 발전 원리를 살펴보았습니다.
- 회전체를 물리적인 힘으로 회전 시켜 봅니다.
- (풍력, 수력 발전기 원리는 회전체에서 전력을 얻습니다.)

---

## 3상 3선식과 발전기

<div class="image-grid single">

<img src="../assets/rotating-machines-04.png" alt="3상 3선식과 발전기 설명 그림 4">

</div>

---

## 3상 3선식의 일반적인 도식

<div class="image-grid single">

<img src="../assets/rotating-machines-05.png" alt="3상 3선식의 일반적인 도식 설명 그림 5">

</div>

---

## 3상 3선식의 결선과 발전기

- 회전체에 3상의 전원을 4개의 선으로 입력하는 방식 3개의 코일에 3상 4선식으로 결선하여 안정적인 전압원을 공급 3상 3선식과 마찬가지로 회전체에서 전력을 얻…

---

## 3상 3선식의 결선과 발전기

<div class="image-grid single">

<img src="../assets/rotating-machines-06.png" alt="3상 3선식의 결선과 발전기 설명 그림 6">

</div>

---

## 3상 4선식의 일반적인 도식

<div class="image-grid single">

<img src="../assets/rotating-machines-07.png" alt="3상 4선식의 일반적인 도식 설명 그림 7">

</div>

---

## 3상 전원의 전압

- 1개의 380V 3상 전원
- 3개의 380V 단상 전원 (RS, ST, TR): 선간전압
- 1개의 380V 3상 전원
- 3개의 380V 단상 전원 (RS, ST, TR): 선간전압
- 3개의 220V 단상 전원 (RN, SN, TN): 상전압

---

## 3상 전원의 전압

<div class="image-grid">

<img src="../assets/rotating-machines-08.png" alt="3상 전원의 전압 설명 그림 8">
<img src="../assets/rotating-machines-09.png" alt="3상 전원의 전압 설명 그림 9">

</div>

---

## 참고

- R, S, T, L (또는 A, B, C, L)을 3상 4선식으로 정의
- R, S, T, G (또는 A, B, C, G)은 3상 3선식 + 접지로 정의 (곧, 3상 4선식이 아님)

---

## 핵심 정리

- 전류가 흐르는 코일은 자기장을 만들고, 여러 상의 위상차는 회전 자기장을 만들었습니다.
- 3상 전원은 위상이 120°씩 어긋나 있어 안정적인 회전력을 만들기 유리했습니다.
- 발전기는 자속의 변화를 이용해 코일에 전압을 유도했습니다.
- 결선 방식에 따라 선간전압, 상전압, 선전류의 관계가 달라졌습니다.
