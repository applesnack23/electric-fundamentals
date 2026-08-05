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

# 1-13. 모터 기동 기술

전기·전자 실무 기초

---

## AC 모터의 기동 문제

- 전원 전압이 순간적으로 떨어집니다.
- 차단기가 동작할 수 있습니다.
- 케이블과 전기 부품에 부담이 증가합니다.
- 기어, 벨트, 축과 같은 기계 부품에 충격이 발생합니다.
- 모터의 수명이 단축될 수 있습니다.

---

## AC 모터의 기동 문제

<div class="image-grid single">

<img src="../assets/motor-starting-technologies-01.png" alt="AC 모터의 기동 문제">

</div>

---

## Y-△ 기동

- 기동 전류를 크게 줄일 수 있습니다.
- 구조가 비교적 단순합니다.
- 다른 전자식 기동 장치보다 비용이 저렴합니다.
- Y 결선 상태에서는 기동 토크도 함께 감소합니다.
- 결선 전환 순간에 전류와 토크의 충격이 발생할 수 있습니다.

---

## Y-△ 기동

<div class="image-grid single">

<img src="../assets/motor-starting-technologies-02.png" alt="Y-△ 기동">

</div>

---

## 리액터 기동

- 기동 전류를 줄일 수 있습니다.
- 단계적으로 전압을 낮출 수 있습니다.
- 비교적 단순한 회로로 구성할 수 있습니다.
- 별도의 리액터와 설치 공간이 필요합니다.
- 리액터에서 열과 전력 손실이 발생합니다.

---

## 리액터 기동

<div class="image-grid single">

<img src="../assets/motor-starting-technologies-03.png" alt="리액터 기동">

</div>

---

## 전자식 소프트 스타터

- 기동 전류의 급격한 증가를 줄일 수 있습니다.
- 모터를 부드럽게 가속할 수 있습니다.
- 기어, 벨트, 커플링과 같은 기계 부품의 충격을 줄일 수 있습니다.
- 펌프에서 발생하는 수격 현상을 완화할 수 있습니다.
- Y-△ 기동보다 배선과 제어가 간단한 경우가 많습니다.

---

## 전자식 소프트 스타터

<div class="image-grid single">

<img src="../assets/motor-starting-technologies-04.png" alt="전자식 소프트 스타터">

</div>

---

## 인버터 기동

- VFD(Variable Frequency Drive)
- Variable Speed Drive
- AC Drive
- Motor Drive
- 기동 전류를 매우 낮게 제한할 수 있습니다.

---

## 인버터 기동

<div class="image-grid single">

<img src="../assets/motor-starting-technologies-05.png" alt="인버터 기동">

</div>

---

## 서보 모터

- 서보 모터
- 서보 드라이브
- 엔코더 또는 리졸버
- 상위 제어기 (PLC, Motion Controller 등)
- 전류 또는 토크 제어 루프

---

## 서보 모터의 장점

- 위치 제어가 매우 정확합니다.
- 속도와 토크를 정밀하게 제어할 수 있습니다.
- 가속과 감속 응답이 빠릅니다.
- 정지 상태에서도 위치를 유지할 수 있습니다.
- 반복 위치 정밀도가 높습니다.

---

## 서보 모터의 단점

- 일반 인버터 모터보다 비용이 높습니다.
- 모터와 드라이브를 서로 호환되는 제품으로 사용해야 합니다.
- 엔코더 케이블과 모터 케이블이 필요합니다.
- 게인과 필터 등의 파라미터 설정이 필요합니다.
- 기구의 강성과 관성에 따라 진동이나 헌팅이 발생할 수 있습니다.

---

## 서보 모터의 적용 분야

- 산업용 로봇
- 협동 로봇
- CNC 공작기계
- 반도체 장비
- 포장 장비
