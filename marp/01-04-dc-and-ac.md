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

# 1-4. 직류와 교류

전기·전자 실무 기초

---

## 학습 목표

- 직류와 교류의 파형 및 용도를 비교할 수 있습니다.
- 단상과 3상, 선간전압과 상전압을 구분할 수 있습니다.
- 국가별 전압과 주파수 체계가 다른 배경을 이해할 수 있습니다.

---

## 교류(交流, Alternating Current)

- 전압 변경에 대한 비용이 저렴하다는 점 때문에 장거리 전송이 유리
- 저장이 어렵습니다. (배터리 X)
- 사용하기 어렵다는 단점 때문에 디지털 회로에서 사용되지 않습니다.

---

## 교류(交流, Alternating Current)

<div class="image-grid">

<img src="../assets/dc-ac-01.png" alt="교류(交流, Alternating Current) 설명 그림 1">
<img src="../assets/dc-ac-02.png" alt="교류(交流, Alternating Current) 설명 그림 2">

</div>

---

## 직류와 교류 비교

- 핵심 개념을 그림과 함께 확인했습니다.

---

## 직류 (DC, Direct Current)

- 전류의 방향이 변하지 않고 일정하게 흐르는 전류
- 저장하기 용이해 배터리 전압원에 적합
- 안저된 전압원으로 디지털 회로에서 사용하기 적합

---

## 직류 (DC, Direct Current)

<div class="image-grid single">

<img src="../assets/dc-ac-03.png" alt="직류 (DC, Direct Current) 설명 그림 3">

</div>

---

## 교류 (AC, Alternating Current)

- 전류의 방향이 일정한 주기로 변하며 흐르는 전류
- 전압 레벨 변경이 용의
- 고 전압일 수록 전력 손실이 적기에 장거리 전송에 적합
- 회전체 구동과 회전체에서 전류를 얻기 용의

---

## 교류 (AC, Alternating Current)

<div class="image-grid single">

<img src="../assets/dc-ac-04.png" alt="교류 (AC, Alternating Current) 설명 그림 4">

</div>

---

## 교류의 전압 측정

- 교류 전압은 일반적으로 실효값($V_{RMS}$, Root Mean Square)으로 표시합니다.
- 그림에서 약 311 V에 해당하는 값은 최대 전압($V_{peak}$)입니다.
- $V_{peak}=220\,V\times\sqrt{2}\approx311\,V$가 됩니다.
- 테스터기로 측정하면 실효값이 측정됩니다.

---

## 교류의 전압 측정

<div class="image-grid">

<img src="../assets/dc-ac-05.png" alt="교류의 전압 측정 설명 그림 5">
<img src="../assets/dc-ac-06.png" alt="교류의 전압 측정 설명 그림 6">

</div>

---

## 단상 2선식

- 활선(Live Wire)은 전원 전압이 인가되는 도선입니다.
- 중성선(Neutral)은 부하 전류가 전원으로 돌아가는 경로를 제공해 회로를 완성합니다.
- 단상 2선식에서는 활선과 중성선 사이의 전압을 사용하며, 이 예의 실효값은 220 V입니다.
- 중성선은 전원 측의 지정된 지점에서 접지와 연결될 수 있지만, 부하 측에서는 보호 접지와 같은 도체로 취급해서는 안 됩니다.

---

## 단상 2선식

<div class="image-grid">

<img src="../assets/dc-ac-07.png" alt="단상 2선식 설명 그림 7">
<img src="../assets/dc-ac-08.png" alt="단상 2선식 설명 그림 8">

</div>

---

## 단상의 위상

- 각도: 한 주기 360°
- 시간: 50 Hz에서는 1초에 50주기가 반복되며 한 주기는 0.02초입니다.

---

## 단상의 위상

<div class="image-grid single">

<img src="../assets/dc-ac-09.png" alt="단상의 위상 설명 그림 9">

</div>

---

## 단상 3선식

- 활선 A에서 중성선,
- 활선 B에서 중성선,
- 활선 A에서 활선 B,

---

## 단상 3선식

<div class="image-grid single">

<img src="../assets/dc-ac-10.png" alt="단상 3선식 설명 그림 10">

</div>

---

## 3상 3선식

- Phase A에서 Phase B,
- Phase B에서 Phase C,
- Phase C에서 Phase A,

---

## 3상 3선식

<div class="image-grid single">

<img src="../assets/dc-ac-11.png" alt="3상 3선식 설명 그림 11">

</div>

---

## 3상 3선식 분전함

- 380V 단상 3개 (RS, ST, TR)
- 380V 3상 1개 (RST)

---

## 3상 3선식 분전함

<div class="image-grid single">

<img src="../assets/dc-ac-12.png" alt="3상 3선식 분전함 설명 그림 12">

</div>

---

## 버스바와 케이블 비교

- 버스바 대신 케이블도 많이 사용 용량이 크면 케이블이 불편합니다.

---

## 버스바와 케이블 비교

<div class="image-grid single">

<img src="../assets/dc-ac-13.png" alt="버스바와 케이블 비교 설명 그림 13">

</div>

---

## 3상 4선식

- Phase A에서 Phase B,
- Phase B에서 Phase C,
- Phase C에서 Phase A,
- Phase A에서 Neutral,
- Phase B에서 Neutral,

---

## 3상 4선식

<div class="image-grid single">

<img src="../assets/dc-ac-14.png" alt="3상 4선식 설명 그림 14">

</div>

---

## 3상 4선식 분전함

- 380V 단상 3개 (RS, ST, TR)
- 220V 단상 3개 (RN, SN, TN)
- 380V 3상 3선식 1개 (R, S, T)
- 380V 3상 4선식 1개 (R, S, T, N)

---

## 3상 4선식 분전함

<div class="image-grid">

<img src="../assets/dc-ac-15.png" alt="3상 4선식 분전함 설명 그림 15">
<img src="../assets/dc-ac-16.png" alt="3상 4선식 분전함 설명 그림 16">

</div>

---

## 단상과 3상

- 한 개의 활선 를 사용
- 두 개의 전선에서 1개의 단상 전원 공급 가능
- 3개의 Wire를 사용
- 3개의 전선에서 3개의 단상 전원과 1개의 3상 전원 공급 가능 (3상 3선식)

---

## 단상과 3상

<div class="image-grid">

<img src="../assets/dc-ac-17.png" alt="단상과 3상 설명 그림 17">
<img src="../assets/dc-ac-18.png" alt="단상과 3상 설명 그림 18">

</div>

---

## 단상과 3상 도면표기

- L(활선)과 N(중성선)을 사용
- 예: L0, L1, N0, N1…
- 미국기준: A, B, C, N(중성선)을 사용
- 유럽기준: R, S, T, N(중성선)을 사용

---

## 단상과 3상 도면표기

<div class="image-grid">

<img src="../assets/dc-ac-19.png" alt="단상과 3상 도면표기 설명 그림 19">
<img src="../assets/dc-ac-20.png" alt="단상과 3상 도면표기 설명 그림 20">

</div>

---

## 110V 사용 이유

- 최초 에디슨이 100V에서 동작하는 백열전구를 개발 다만, 송전상에 손실되는 전류를 감안해 전기는 안전율을 더해 110V를 사용 이후 더 높은 배전 전압을 사용…
- 미국과 일본은 기존 110V 전기가 많이 사용되고 있어 변경을 못함 220V는 110V로 전환하기 쉬워 사용했으며 330V 또는 그 이상의 전기는 위험해서 적용…

---

## 50Hz, 60Hz 사용 이유

- 전력 주파수는 조명 깜박임, 회전기기의 특성, 변압기 크기와 손실 등에 영향을 주었습니다.
- 현재의 50 Hz와 60 Hz 체계는 기술적 절충과 각 지역 전력망의 역사적 선택을 통해 정착했습니다.
- 주파수가 다른 장비를 사용할 때는 정격 주파수와 제조사 사양을 반드시 확인해야 합니다.

---

## 핵심 정리

- 직류는 극성과전류 방향이 일정하며, 교류는 시간에 따라 크기와 방향이 변했습니다.
- 단상은 일반 가정과 소형 부하에, 3상은 산업용 대형 부하에 주로 사용되었습니다.
- 3상 4선식에서는 선간전압과 상전압을 모두 사용할 수 있습니다.
- 전압이나 결선 방식을 확인할 때는 임의로 판단하지 말고 도면과 측정값을 함께 확인해야 합니다.
