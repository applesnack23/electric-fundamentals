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

# 1-3. 전압 분배와 전력

전기·전자 실무 기초

---

## 학습 목표

- 직렬·병렬 저항의 합성 저항을 계산할 수 있습니다.
- 전압 분배 법칙으로 각 저항에 걸리는 전압을 구할 수 있습니다.
- 전력 공식을 사용해 부품의 정격 전력을 선정할 수 있습니다.

---

## 합산 저항

- 저항의 직렬 연결 총 저항은 200Ω (100 + 100)이 됩니다.
- 저항의 병렬 연결 총 저항은 50Ω(1/(1/100 +1/100))이 됩니다.

---

## 합산 저항

<div class="image-grid">

<img src="../assets/voltage-division-power-01.png" alt="합산 저항 설명 그림 1">
<img src="../assets/voltage-division-power-02.png" alt="합산 저항 설명 그림 2">

</div>

---

## 전압 분배법칙

- 직렬연결에서의 전압 V=I×R에 의해 전류는 50mA 각 저항에 걸리는 전압은 V=I×R에 의해 5V 병렬연결에서의 전압 저항 하나당 폐회로가 되기 때문에 각 …

---

## 전압 분배법칙

<div class="image-grid">

<img src="../assets/voltage-division-power-03.png" alt="전압 분배법칙 설명 그림 3">
<img src="../assets/voltage-division-power-04.png" alt="전압 분배법칙 설명 그림 4">

</div>

---

## 전력(電力, electric power)

- 전력은 전기 에너지가 할 수 있는 일의 능력을 측정하는 단위이며 Watt를 사용합니다.
- P = V×I P는 전력, V는 전압 I는 전류 이 공식에서 얻을 수 있는 내용은 아래와 같습니다.
- → 전압이 높아지면 전기 에너지가 할 수 있는 일의 능력이 좋아집니다.
- → 전류가 높아지면 전기 에너지가 할 수 있는 일의 능력이 좋아집니다.

---

## 마력과 전력

- 기계적 마력 (Mechanical Horsepower): 745.7W
- 전기적 마력 (Electrical Horsepower): 746~756W

---

## 전력 공식의 예

- 2A = 2000mA = 0.002kA
- 24V = 24000mV = 0.024kV
- 12Ω = 12000mΩ = 0.012kΩ
- 48W = 48000mW = 0.048kW

---

## 전력 공식의 예

<div class="image-grid single">

<img src="../assets/voltage-division-power-05.png" alt="전력 공식의 예 설명 그림 5">

</div>

---

## 부하의 전력이란

- 부하에서 전력을 계산하는 이유는 부하가 할 수 있는 일(즉, 부하가 버틸 수 있는 에너지)을 계산 저항과 같은 경우 버틸 수 있는 전력을 넘어가게 되면 터집니다.

---

## 부하의 전력이란

<div class="image-grid single">

<img src="../assets/voltage-division-power-06.png" alt="부하의 전력이란 설명 그림 6">

</div>

---

## 저항의 선택

- 저항의 중요 요소는 저항 값과 전력입니다.
- 저항 값은 전압과 전류를 알고 있을 때, V = I × R 공식으로 유추할 수 있습니다.
- R=I/V 임이 유추 되며, P = V × I 공식을 사용할 수 있습니다.
- 예를 들어 5V에서 10mA의 전류를 사용하고 싶다면 R=5V/10mA가 되어 500Ω이 되며, 전력은 P = 5V × 10mA가 되어 0.05W가 됩니다.
- 500Ω 저항에 1/4W (0.25W)를 선택하면 무리 없이 저항을 사용할 수 있습니다.

---

## 저항의 선택

<div class="image-grid single">

<img src="../assets/voltage-division-power-07.png" alt="저항의 선택 설명 그림 7">

</div>

---

## 핵심 정리

- 직렬회로에서는 전류가 같고 전압이 저항 값에 비례해 나뉩니다.
- 병렬회로에서는 전압이 같고 전류가 각 경로로 나뉩니다.
- 전력은 단위 시간에 사용한 에너지이며 $P=VI$로 계산했습니다.
- 저항은 계산값보다 여유가 있는 정격 전력의 제품을 선정해야 합니다.
