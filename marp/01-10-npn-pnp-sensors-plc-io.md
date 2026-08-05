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

# 1-10. NPN/PNP 센서와 PLC 입출력

전기·전자 실무 기초

---

## NPN 트랜지스터

- NPN 트랜지스터는 가장 많이 사용되는 스위칭 소자 중 하나 입니다.
- 자동화 분야에서는 일반적으로 Open Collector 출력 방식으로 사용됩니다.
- 출력이 ON되면 출력 단자가 0V (GND)와 연결되어 전류가 흐르게 됩니다.

---

## NPN 트랜지스터

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-01.png" alt="NPN 트랜지스터">

</div>

---

## PNP 트랜지스터

- PNP 트랜지스터 역시 Open Collector 방식으로 많이 사용됩니다.
- 출력이 ON되면 출력 단자가 +전원(P24)과 연결되어 전류가 흐르게 됩니다.

---

## PNP 트랜지스터

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-02.png" alt="PNP 트랜지스터">

</div>

---

## NPN 타입 센서

- NPN 센서는 출력이 ON되면 신호선을 0V(GND)로 연결합니다.
- 이를 Sink 출력이라고도 합니다.

---

## NPN 타입 센서

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-03.png" alt="NPN 타입 센서">

</div>

---

## PNP 타입 센서

- PNP 센서는 출력이 ON되면 신호선에 +24V를 출력합니다.
- 이를 Source 출력이라고도 합니다.

---

## PNP 타입 센서

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-04.png" alt="PNP 타입 센서">

</div>

---

## Source 입력

- Source 입력은 입력 공통 (Common) 이 +24V에 연결되어 있으며, 입력 단자에 -전압이 들어오면 ON으로 인식합니다.
- 따라서 일반적으로 NPN 센서와 함께 사용합니다.

---

## Source 입력

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-05.png" alt="Source 입력">

</div>

---

## Sink Type Input

- Sink 입력은 입력 공통(Common)이 0V에 연결되어 있으며, 입력 단자에 **전압이 들어오면 ON으로 인식합니다.** 따라서 일반적으로 PNP 센서와 함…

---

## Sink Type Input

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-06.png" alt="Sink Type Input">

</div>

---

## PLC Source 입력 (Common)

- Source 입력 모듈은 Common 단자를 +24V에 연결하여 사용합니다.
- 이 경우 NPN 센서를 연결해야 정상적으로 동작합니다.

---

## PLC Source 입력 (Common)

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-07.png" alt="PLC Source 입력 (Common)">

</div>

---

## PLC Sink 입력 (Common)

- Sink 입력 모듈은 Common 단자를 0V에 연결하여 사용합니다.
- 이 경우 NPN 센서를 연결해야 정상적으로 동작합니다.

---

## PLC Sink 입력 (Common)

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-08.png" alt="PLC Sink 입력 (Common)">

</div>

---

## PLC Source 출력 (Common)

- Source 출력 모듈은 출력시 +24V 를 공급하는 방식입니다.
- 따라서 Sink 입력 장치와 연결하여 사용합니다.

---

## PLC Source 출력 (Common)

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-09.png" alt="PLC Source 출력 (Common)">

</div>

---

## PLC Sink 출력 (Common)

- Sink 출력 모듈은 출력시 0V를 연결하는 방식입니다.
- 따라서 Source 입력 장치와 연결하여 사용합니다.

---

## PLC Sink 출력 (Common)

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-10.png" alt="PLC Sink 출력 (Common)">

</div>

---

## Summury

- Sink 출력 ↔ Source 입력
- Source 출력 ↔ Sink 입력
- Sink Type Common → +24V
- Source Type Common → 0V

---

## 릴레이 출력 모듈

- 릴레이 출력 모듈은 반도체 출력과 달리 내부에 실제 릴레이 접점이 있습니다.
- 따라서 AC와 DC 모두 사용할 수 있으며, NPN과 PNP를 구분하지 않습니다.
- 다만 기계식 접점을 사용하므로 반도체 출력보다
- 속도가 느리고 수명이 존재합니다.

---

## 릴레이 출력 모듈

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-11.png" alt="릴레이 출력 모듈">

</div>

---

## 센서 출력 방식 해석

- NPN 출력
- PNP 출력

---

## 센서 출력 방식 해석

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-12.png" alt="센서 출력 방식 해석">

</div>

---

## 센서 동작 모드 해석

- Light ON
- Dark ON

---

## 센서 동작 모드 해석

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-13.png" alt="센서 동작 모드 해석">

</div>

---

## 투과형 센서

- 투과형 센서는 발광부와 수광부가 서로 마주보는 구조입니다.
- 물체가 광선을 차단하는지 여부에 따라 출력이 결정 됩니다.
- Light ON과 Dark ON은 출력 조건만 서로 반대입니다.

---

## 투과형 센서

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-14.png" alt="투과형 센서">

</div>

---

## 반사형 센서

- 반사형 센서는 발광부와 수광부가 하나의 센서 안에 있습니다.
- 물체에서 반사된 빛을 감지하여 출력합니다.
- 역시 Light ON과 Dark ON 두가지 동작 방식을 사용할 수 있습니다.

---

## 반사형 센서

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-15.png" alt="반사형 센서">

</div>

---

## 센서 배선

- +24V (P24)
- 0V (N24)
- Signal 출력
- NPN : Signal -
- PNP : Signal +

---

## 센서 배선

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-16.png" alt="센서 배선">

</div>

---

## PLC 입출력 모듈

- 입력 모듈
- 출력 모듈
- 입출력 혼합 모듈

---

## PLC 입출력 모듈

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-17.png" alt="PLC 입출력 모듈">

</div>

---

## 입력 모듈 사양

- 입력 모듈은 스위치나 센서의 신호를 PLC로 전달하는 역할을 합니다.
- 입력 전압과 입력 방식(Source/Sink)을 반드시 확인해야 합니다.

---

## 입력 모듈 사양

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-18.png" alt="입력 모듈 사양">

</div>

---

## 입력 모듈 외부 결선도

- 입력 모듈은 Common 단자와 센서를 올바르게 연결해야 정상적으로 동작합니다.
- 배선 전에 Source 타입인지 Sink 타입인지 반드시 확인해야 합니다.

---

## 입력 모듈 외부 결선도

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-19.png" alt="입력 모듈 외부 결선도">

</div>

---

## 센서 연결

- 센서는 전원선과 신호선을 각각 연결하여 PLC 입력으로 전달합니다.
- 배선 색상과 출력 방식을 함께 확인하는 것이 중요합니다.

---

## 센서 연결

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-20.png" alt="센서 연결">

</div>

---

## 입력 연결

- 센서의 출력 신호는 PLC 입력 단자로 연결되며, PLC는 이를 ON/OFF 신호로 인식합니다.

---

## 입력 연결

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-21.png" alt="입력 연결">

</div>

---

## 출력 모듈

- 출력 모듈은 PLC 내부의 제어 신호를 외부 장치로 전달합니다.
- 램프, 릴레이, 솔레노이드 밸브, 모터 드라이버 등이 대표적인 출력 대상입니다.
- 출력 방식은 릴레이 출력, 트랜지스터 출력, SSR 출력 등으로 구분됩니다.

---

## 출력 모듈

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-22.png" alt="출력 모듈">

</div>

---

## 출력모듈 외부 결선도

- 출력 모듈의 Common 단자를 올바르게 연결한 후 부하를 연결합니다.
- 트랜지스터 출력은 Source 타입과 Sink 타입을 반드시 구분해야 합니다.

---

## 출력모듈 외부 결선도

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-23.png" alt="출력모듈 외부 결선도">

</div>

---

## 출력 연결

- PLC 출력이 ON되면 부하에 전원이 공급되어 장치가 동작합니다.
- 부하의 전압과 소비 전류가 출력 모듈의 허용 범위를 초과하지 않는지 반드시 확인해야 합니다.

---

## 출력 연결

<div class="image-grid single">

<img src="../assets/npn-pnp-sensors-plc-io-24.png" alt="출력 연결">

</div>

---

## 핵심 정리

- NPN 출력 = Sink 출력
- PNP 출력 = Source 출력
- NPN 센서 (Sink 출력) → Source 입력 PLC
- PNP 센서 (Source 출력) → Sink 입력 PLC
- Sink 출력은 Source 입력과 연결합니다.
