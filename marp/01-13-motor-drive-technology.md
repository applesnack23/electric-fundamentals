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

# 1-13. 모터 구동 기술

전기·전자 실무 기초

---

## 학습 목표

- 모터 기동 전류가 크게 발생하는 이유를 이해할 수 있습니다.
- Y-△, 리액터, 소프트 스타터, 인버터 기동을 비교할 수 있습니다.
- 부하 특성에 맞는 기동 방식을 선택하는 기준을 설명할 수 있습니다.

---

## AC 모터 기동의 문제

- Y-△ 기동
- 리액터 기동
- 전자식 Soft Starter
- 인버터 기동
- 별도의 컨트롤러를 사용 (=서보 모터)

---

## AC 모터 기동의 문제

<div class="image-grid single">

<img src="../assets/motor-drive-01.png" alt="AC 모터 기동의 문제 설명 그림 1">

</div>

---

## Y-△ 기동

- Y: 3상 4선식
- △: 3상 3선식
- 기동 전류를 많이 줄일 수 있습니다.
- 비교적 저렴한 비용으로 사용할 수 있습니다.
- 초기 기동 토크도 줄어들기 때문에 매우 큰 모터에는 적합하지 않습니다.

---

## Y-△ 기동

<div class="image-grid single">

<img src="../assets/motor-drive-02.png" alt="Y-△ 기동 설명 그림 2">

</div>

---

## 리액터 기동

- 일정 속도에 도달하면 리액터를 제거하고 정상 운전했습니다.
- 기동 전류를 줄이면서도 비교적 높은 기동 토크를 유지할 수 있습니다.
- 별도의 리액터를 추가로 설치해야 합니다.

---

## 리액터 기동

<div class="image-grid single">

<img src="../assets/motor-drive-03.png" alt="리액터 기동 설명 그림 3">

</div>

---

## 전자식 Soft Starter

- 부드럽게 기동하며 전류 급증을 방지했습니다.
- 기계적 충격을 줄여 기어와 벨트 등을 보호했습니다.
- 비용이 다소 높습니다.

---

## 전자식 Soft Starter

<div class="image-grid single">

<img src="../assets/motor-drive-04.png" alt="전자식 Soft Starter 설명 그림 4">

</div>

---

## 인버터 기동

- 엄밀히는 가변 주파수 드라이브(VFD)라는 표현이 더 정확합니다.
- 국내 산업 현장에서는 일반적으로 인버터라는 명칭을 사용했습니다.
- 기동 전류를 낮추고 모터와 부하에 전달되는 충격을 줄일 수 있습니다.
- 속도 제어가 가능합니다.
- 비용이 높습니다.

---

## 인버터 기동

<div class="image-grid single">

<img src="../assets/motor-drive-05.png" alt="인버터 기동 설명 그림 5">

</div>

---

## 핵심 정리

- Y-△ 기동은 초기 인가 전압과 기동 전류를 낮춘 뒤 정상 결선으로 전환했습니다.
- 리액터 기동은 직렬 인덕턴스로 기동 전류를 제한했습니다.
- 소프트 스타터는 전력 반도체로 인가 전압을 점진적으로 높였습니다.
- 인버터는 전압과 주파수를 함께 제어해 부드러운 기동과 속도 제어를 가능하게 했습니다.
