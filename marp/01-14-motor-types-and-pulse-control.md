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

# 1-14. AC, DC, BLDC, 스테핑 모터, 서보 모터의 펄스 제어 방식

전기·전자 실무 기초

---

## 학습 목표

- 주요 모터 종류의 구조와 용도를 비교할 수 있습니다.
- PWM, V/F, FOC 제어의 목적과 차이를 이해할 수 있습니다.
- 피드백과 PID 제어가 오차를 줄이는 과정을 설명할 수 있습니다.

---

## AC 모터 제어 방식

- f = 주파수
- P = 극수

---

## V/F (=Voltage / Frequency)

- AC → DC → PWM → AC
- 자세한 내용은 전력 변환기 내용 참조

---

## V/F (=Voltage / Frequency)

<div class="image-grid single">

<img src="../assets/motor-pulse-control-01.png" alt="V/F (=Voltage / Frequency) 설명 그림 1">

</div>

---

## FOC (=Field Oriented Control)

- *고가의 인버터 혹은 서보 모터에서 주력으로 사용* 주파수 변경 → 속도 변경 전압 변경 → 토크 변경 V/F 제어는 토크 제어 불가능 홀 센서를 사용해 현재 …

---

## V/F vs FOC

- V/F 실시간 제어 기능 없음 FOC 피드백 을 기반으로 실시간 제어 포함

---

## V/F vs FOC

<div class="image-grid">

<img src="../assets/motor-pulse-control-02.png" alt="V/F vs FOC 설명 그림 2">
<img src="../assets/motor-pulse-control-03.png" alt="V/F vs FOC 설명 그림 3">

</div>

---

## DC 모터 제어 방식

- V = 공급전압
- E = 역기전력
- I = 전류

---

## DC 모터 제어 방식

<div class="image-grid single">

<img src="../assets/motor-pulse-control-04.png" alt="DC 모터 제어 방식 설명 그림 4">

</div>

---

## PWM (=Pulse Width Modulation)

- 듀티를 변화시켜 원하는 전압으로 변환할 수 있습니다.
- 실제 전압을 만들어내는 과정은 전자실습 (마이크로컨트롤러) 과정에서 진행합니다.

---

## PWM (=Pulse Width Modulation)

<div class="image-grid single">

<img src="../assets/motor-pulse-control-05.png" alt="PWM (=Pulse Width Modulation) 설명 그림 5">

</div>

---

## BLDC 모터

- BLDC(=Brushless DC) 모터는 이름에서 알 수 있듯이 브러시가 없는 DC 모터입니다.

---

## BLDC 모터

<div class="image-grid single">

<img src="../assets/motor-pulse-control-06.png" alt="BLDC 모터 설명 그림 6">

</div>

---

## DC vs BLDC

- 핵심 개념을 그림과 함께 확인했습니다.

---

## 스테핑 모터

<div class="image-grid single">

<img src="../assets/motor-pulse-control-07.png" alt="스테핑 모터 설명 그림 7">

</div>

---

## 모터 비교

- 핵심 개념을 그림과 함께 확인했습니다.

---

## 서보 모터

- 서보 시스템은 DC 모터, AC 모터, BLDC 모터 등에 엔코더와 제어기를 결합해 정밀 제어할 때 사용됩니다.
- 서보라는 말은 특정 모터 구조보다
- 피드백을 이용해 위치·속도·토크를 정밀하게 제어하는 시스템을 뜻합니다.
- 서보 모터는 반드시 엔코더와 모터 드라이브를 포함해야 합니다.
- DC, AC, 스테핑 어느것이든 사용할 수 있지만, 산업에서는 주로 AC 모터를 주력으로 사용하는데 그 이유는 가격이 저렴하며 토크가 좋아 가성비가 매우 좋습니다.

---

## 제어기

- 제어기의 목표는 기준값과 측정값 사이의 오차를 줄이는 것입니다.
- 현재 오차를 확인하고 다음 제어 주기의 출력값을 보정했습니다.
- 제어 주기가 짧을수록 변화에 빠르게 반응할 수 있지만, 센서 노이즈와 연산 부하도 함께 고려해야 합니다.
- MV(t) : 출력, 𝐾_𝑝 : 비례 상수, 𝐾_𝑖 : 적분 상수, 𝐾_𝑑 : 미분 상수

---

## 제어기

<div class="image-grid single">

<img src="../assets/motor-pulse-control-08.png" alt="제어기 설명 그림 8">

</div>

---

## PID Controller

- $MV(t) = K_pe(t)$
- Error에 대한 출력 변화를 증가
- $MV(t)=K_i ∫_0^te(t)dt$
- 적분(과거의 Error를 반영)해 출력 변화를 증가 : 정상상태 오차 감소
- $MV(t)=K_p e(t)+K_i \int_0^t e(t)dt+K_d \frac{de(t)}{dt}$

---

## 핵심 정리

- AC 모터는 주파수로 속도를, 전압으로 자속과 토크 특성을 제어했습니다.
- DC 모터는 전압과 PWM 듀티비로 속도를 조절하기 쉬웠습니다.
- BLDC와 서보 시스템은 센서 피드백을 이용해 위치와 속도를 정밀하게 제어했습니다.
- PID 제어기는 현재·누적·변화 추세의 오차를 조합해 출력값을 보정했습니다.
