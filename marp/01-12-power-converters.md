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

# 1-12. 전력 변환기 및 컨버터 회로 구조

전기·전자 실무 기초

---

## 학습 목표

- 다이오드의 순방향·역방향 동작을 설명할 수 있습니다.
- AC-DC, DC-AC, DC-DC, AC-AC 변환을 구분할 수 있습니다.
- 부품의 전압·전류·전력 정격을 고려해 기본 소자를 선정할 수 있습니다.

---

## 다이오드

- 다이오드는 한쪽 방향으로만 전류가 흐르는 특징이 있는 소자

---

## 다이오드

<div class="image-grid">

<img src="../assets/power-converters-01.png" alt="다이오드 설명 그림 1">
<img src="../assets/power-converters-02.png" alt="다이오드 설명 그림 2">

</div>

---

## 다이오드 선정

- Maximum average forward retified current 1.0 Amp
- Maximum instantaneous forward voltage at 1.0 A: 1.1 V
- Maximum repetitive peak reverse voltage: 1000 V

---

## 다이오드 선정

<div class="image-grid single">

<img src="../assets/power-converters-03.png" alt="다이오드 선정 설명 그림 3">

</div>

---

## 순방향 전압 강하

- LED(발광 다이오드)와 저항 선택 예제 순방향 전압 강하는 1.8 V이고 허용 전류는 20 mA입니다.
- 5 V 전압 공급 시 추천 저항은 100 ~ 300옴

---

## 순방향 전압 강하

<div class="image-grid single">

<img src="../assets/power-converters-04.png" alt="순방향 전압 강하 설명 그림 4">

</div>

---

## 저항 선정

- R = (5V - 1.8V) / 0.02A 저항 160Ω 이상인 200Ω 선택 (이상도 가능 단, 밝기가 어두움) 이때 200Ω 저항에 걸리는 전압은 3.2V …

---

## 저항 선정

<div class="image-grid single">

<img src="../assets/power-converters-05.png" alt="저항 선정 설명 그림 5">

</div>

---

## 컨버터

- DC to DC 컨버터
- AC to DC 컨버터
- DC to AC 컨버터 : 인버터
- AC to AC 컨버터 : 변압기

---

## AC to AC 컨버터

- 코일의 권선수에 따라 전압 레벨이 변경 됩니다.
- 가장 간단하며 비용이 저렴합니다.

---

## AC to AC 컨버터

<div class="image-grid">

<img src="../assets/power-converters-06.png" alt="AC to AC 컨버터 설명 그림 6">
<img src="../assets/power-converters-07.png" alt="AC to AC 컨버터 설명 그림 7">

</div>

---

## AC to DC 컨버터

- 브릿지 다이오드를 사용해서 극성을 바꾸어 줍니다.
- 커패시터를 사용해 평활회로를 만들어 줍니다.
- 마지막 정전압 장치로 DC를 만듭니다.

---

## AC to DC 컨버터 · 그림 1

<div class="image-grid">

<img src="../assets/power-converters-08.png" alt="AC to DC 컨버터 설명 그림 8">
<img src="../assets/power-converters-09.png" alt="AC to DC 컨버터 설명 그림 9">

</div>

---

## AC to DC 컨버터 · 그림 2

<div class="image-grid single">

<img src="../assets/power-converters-10.png" alt="AC to DC 컨버터 설명 그림 10">

</div>

---

## DC to AC 컨버터

- DC를 AC로 변경하는 것은 상당한 비용을 만들어 냅니다.
- 자세한 PWM 제어 방법은 마이크로컨트롤러 과정에서 다루므로 여기서는 기본 원리만 학습했습니다.
- DC 전원 주파수로 나누어 아주 빠르게 ON/OFF를 반복해 AC로 변경합니다.
- 출력 전압을 모니터링하면서 스위칭 주파수는 고정하고 듀티비를 조절했습니다.
- → AC 전원 생성 가능 더 자세한 건 마이크로컨트롤러 편에서 진행 태양광으로 만들어지는 전원은 배터리와 같이 DC 전원을 사용합니다.

---

## DC to AC 컨버터 · 그림 1

<div class="image-grid">

<img src="../assets/power-converters-11.png" alt="DC to AC 컨버터 설명 그림 11">
<img src="../assets/power-converters-12.png" alt="DC to AC 컨버터 설명 그림 12">

</div>

---

## DC to AC 컨버터 · 그림 2

<div class="image-grid single">

<img src="../assets/power-converters-13.png" alt="DC to AC 컨버터 설명 그림 13">

</div>

---

## DC to DC 컨버터

- Buck 컨버터: DC 전압 강하 (Step-Down)
- Boost 컨버터: DC 전압 상승 (Step-Up)
- SMPS 등

---

## AC to AC 컨버터

- 앞서 사용했던 AC to AC 컨버터 는 전압 레벨만 변경 가능 AC의 주파수까지 변경하려면 먼저 AC를 DC로 변환한 뒤 다시 원하는 주파수의 AC로 변환해야…
- 재밌게도 이것이 우리가 알고 있는 모터 구동용 인버터 이지만, 사실 정식 명칭은 아닙니다.
- AC 전원을 입력 받아서 모터의 회전속도를 변경하기 위해서는 주파수 변경이 필요하기 때문에 모터 구동용 인버터 (=모터 구동용 컨트롤러 또는 모터 드라이브)를 …

---

## 핵심 정리

- 다이오드는 전류를 한 방향으로 흐르게 하며 정류회로의 기본이 되었습니다.
- AC-DC 변환기는 교류를 직류로 정류하고 평활·안정화했습니다.
- DC-AC 인버터는 스위칭을 통해 교류 파형을 만들었습니다.
- 컨버터를 선정할 때는 입력 범위, 출력 정격, 효율, 절연 여부, 발열을 함께 확인해야 합니다.
