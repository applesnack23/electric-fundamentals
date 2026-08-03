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

# 1-10. NPN/PNP 타입, Sink/Source 출력 구성 방식 이해

전기·전자 실무 기초

---

## 학습 목표

- NPN과 PNP 트랜지스터 출력의 차이를 설명할 수 있습니다.
- Sink와 Source를 전류 방향을 기준으로 구분할 수 있습니다.
- 센서와 PLC 입출력 모듈의 호환 결선을 판단할 수 있습니다.

---

## NPN 트랜지스터

- Open Collector Type

---

## NPN 트랜지스터

<div class="image-grid single">

<img src="../assets/npn-pnp-01.png" alt="NPN 트랜지스터 설명 그림 1">

</div>

---

## PNP 트랜지스터

- Open Collector Type

---

## PNP 트랜지스터

<div class="image-grid single">

<img src="../assets/npn-pnp-02.png" alt="PNP 트랜지스터 설명 그림 2">

</div>

---

## NPN Type Sensor

<div class="image-grid single">

<img src="../assets/npn-pnp-03.png" alt="NPN Type Sensor 설명 그림 3">

</div>

---

## PNP Type Sensor

<div class="image-grid single">

<img src="../assets/npn-pnp-04.png" alt="PNP Type Sensor 설명 그림 4">

</div>

---

## Source Type Input

<div class="image-grid single">

<img src="../assets/npn-pnp-05.png" alt="Source Type Input 설명 그림 5">

</div>

---

## Sink Type Input

<div class="image-grid single">

<img src="../assets/npn-pnp-06.png" alt="Sink Type Input 설명 그림 6">

</div>

---

## PLC - Source Type Input Common

<div class="image-grid single">

<img src="../assets/npn-pnp-07.png" alt="PLC - Source Type Input Common 설명 그림 7">

</div>

---

## PLC - Sink Type Input Common

<div class="image-grid single">

<img src="../assets/npn-pnp-08.png" alt="PLC - Sink Type Input Common 설명 그림 8">

</div>

---

## PLC - Source Type Output Common

<div class="image-grid single">

<img src="../assets/npn-pnp-09.png" alt="PLC - Source Type Output Common 설명 그림 9">

</div>

---

## PLC - Sink Type Output Common

<div class="image-grid single">

<img src="../assets/npn-pnp-10.png" alt="PLC - Sink Type Output Common 설명 그림 10">

</div>

---

## 요약

- Sink Type Output - Source Type Input
- Source Type Output - Sink Type Input
- Sink Type Common - Positive
- Source Type Common - Negative

---

## PLC - 릴레이 Type Output

<div class="image-grid single">

<img src="../assets/npn-pnp-11.png" alt="PLC - 릴레이 Type Output 설명 그림 11">

</div>

---

## 센서 도면 해석

- NPN 출력
- PNP 출력
- Light ON
- Dark ON

---

## 센서 도면 해석

<div class="image-grid">

<img src="../assets/npn-pnp-12.png" alt="센서 도면 해석 설명 그림 12">
<img src="../assets/npn-pnp-13.png" alt="센서 도면 해석 설명 그림 13">

</div>

---

## 투과형 (Dark On / Light ON)

<div class="image-grid">

<img src="../assets/npn-pnp-14.png" alt="투과형 (Dark On / Light ON) 설명 그림 14">
<img src="../assets/npn-pnp-15.png" alt="투과형 (Dark On / Light ON) 설명 그림 15">

</div>

---

## 반사형 (Dark On / Light ON)

<div class="image-grid">

<img src="../assets/npn-pnp-16.png" alt="반사형 (Dark On / Light ON) 설명 그림 16">
<img src="../assets/npn-pnp-17.png" alt="반사형 (Dark On / Light ON) 설명 그림 17">

</div>

---

## 출력

- P24
- N24
- Signal
- NPN : Signal -
- PNP : Signal +

---

## 출력

<div class="image-grid single">

<img src="../assets/npn-pnp-18.png" alt="출력 설명 그림 18">

</div>

---

## PLC Module

- **입력 모듈** **출력 모듈** **입출력 혼합 모듈**

---

## PLC Module

<div class="image-grid single">

<img src="../assets/npn-pnp-19.png" alt="PLC Module 설명 그림 19">

</div>

---

## 입력 모듈 사양

<div class="image-grid single">

<img src="../assets/npn-pnp-20.png" alt="입력 모듈 사양 설명 그림 20">

</div>

---

## 입력 모듈 외부 결선도

<div class="image-grid single">

<img src="../assets/npn-pnp-21.png" alt="입력 모듈 외부 결선도 설명 그림 21">

</div>

---

## 센서 연결

<div class="image-grid single">

<img src="../assets/npn-pnp-22.png" alt="센서 연결 설명 그림 22">

</div>

---

## 입력 연결

<div class="image-grid single">

<img src="../assets/npn-pnp-23.png" alt="입력 연결 설명 그림 23">

</div>

---

## 출력 모듈 사양

<div class="image-grid single">

<img src="../assets/npn-pnp-24.png" alt="출력 모듈 사양 설명 그림 24">

</div>

---

## 출력 모듈 외부 결선도

<div class="image-grid single">

<img src="../assets/npn-pnp-25.png" alt="출력 모듈 외부 결선도 설명 그림 25">

</div>

---

## 출력 연결

<div class="image-grid single">

<img src="../assets/npn-pnp-26.png" alt="출력 연결 설명 그림 26">

</div>

---

## 핵심 정리

- NPN 오픈 컬렉터 출력은 부하 전류를 0V 쪽으로 흘리는 방식이었습니다.
- PNP 출력은 부하 쪽으로 양의 전압과 전류를 공급하는 방식이었습니다.
- Sink/Source라는 이름은 장치 하나가 아니라 서로 연결된 입력과 출력의 관계로 판단해야 합니다.
- 결선 전에는 센서와 PLC 모듈의 데이터시트, 공통 단자, 정격 전압을 반드시 확인해야 합니다.
