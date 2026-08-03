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

# 1-9. 스위치, 트랜지스터, 릴레이, SSR, 포토커플러, MC, MOSFET의 동작 원리와 적용

전기·전자 실무 기초

---

## 학습 목표

- 접점과 시퀀스 회로의 기본 동작을 설명할 수 있습니다.
- 릴레이와 반도체 스위칭 소자의 장단점을 비교할 수 있습니다.
- 부하 종류에 따라 적절한 스위칭 소자를 선택하는 기준을 이해할 수 있습니다.

---

## 스위치

- 표시등
- 누름버튼 스위치
- 조광형 누름버튼 스위치
- 셀렉터 스위치
- 조광형 셀렉터 스위치

---

## 스위치 · 그림 1

<div class="image-grid">

<img src="../assets/switching-devices-01.png" alt="스위치 설명 그림 1">
<img src="../assets/switching-devices-02.png" alt="스위치 설명 그림 2">

</div>

---

## 스위치 · 그림 2

<div class="image-grid single">

<img src="../assets/switching-devices-03.png" alt="스위치 설명 그림 3">

</div>

---

## 표시등 (=LAMP)

- 사양에 따른 전압을 공급하면 표시등을 ON 할 수 있습니다.

---

## 표시등 (=LAMP)

<div class="image-grid single">

<img src="../assets/switching-devices-04.png" alt="표시등 (=LAMP) 설명 그림 4">

</div>

---

## 스위치 회로

- Normal Closed (NC) : 1 → 2
- B접점 또는 B-Contact
- Normal Open (NO) : 4 → 3
- A접점 또는 A-Contact
- Lamp : x1 → x2

---

## 스위치 회로 · 그림 1

<div class="image-grid">

<img src="../assets/switching-devices-05.png" alt="스위치 회로 설명 그림 5">
<img src="../assets/switching-devices-06.png" alt="스위치 회로 설명 그림 6">

</div>

---

## 스위치 회로 · 그림 2

<div class="image-grid single">

<img src="../assets/switching-devices-07.png" alt="스위치 회로 설명 그림 7">

</div>

---

## 소자 설명

- 스위치 장치 DC 배터리 장치 부하 (Lamp, Motor 등)

---

## 소자 설명 · 그림 1

<div class="image-grid">

<img src="../assets/switching-devices-08.png" alt="소자 설명 설명 그림 8">
<img src="../assets/switching-devices-09.png" alt="소자 설명 설명 그림 9">

</div>

---

## 소자 설명 · 그림 2

<div class="image-grid single">

<img src="../assets/switching-devices-10.png" alt="소자 설명 설명 그림 10">

</div>

---

## 시퀀스 회로

- A 접점을 사용해서 Lamp On
- B 접점을 사용해서 Lamp Off

---

## 시퀀스 회로

<div class="image-grid">

<img src="../assets/switching-devices-11.png" alt="시퀀스 회로 설명 그림 11">
<img src="../assets/switching-devices-12.png" alt="시퀀스 회로 설명 그림 12">

</div>

---

## 스위치 종류

- 누르면 ON, 떼면 OFF
- 누르면 OFF, 떼면 ON
- 왼쪽 OFF, 오른쪽 ON
- 왼쪽 ON, 오른쪽 OFF
- 왼쪽 ON, 오른쪽 OFF

---

## 스위치 종류

<div class="image-grid single">

<img src="../assets/switching-devices-13.png" alt="스위치 종류 설명 그림 13">

</div>

---

## 접점 추가

<div class="image-grid single">

<img src="../assets/switching-devices-14.png" alt="접점 추가 설명 그림 14">

</div>

---

## DO (=Digital Output)

- Source (원천, 근원, 출처, 얻다)
- Sink (빠지다, 가라앉다)
- 부하를 기준으로 극성이 변경

---

## DO (=Digital Output) · 그림 1

<div class="image-grid">

<img src="../assets/switching-devices-15.png" alt="DO (=Digital Output) 설명 그림 15">
<img src="../assets/switching-devices-16.png" alt="DO (=Digital Output) 설명 그림 16">

</div>

---

## DO (=Digital Output) · 그림 2

<div class="image-grid single">

<img src="../assets/switching-devices-17.png" alt="DO (=Digital Output) 설명 그림 17">

</div>

---

## 릴레이

- 자동제어에서 가장 많이 사용됨 기계적인 접점이 존재하기 때문에 소모성 제품 기계적인 접점 동작으로 속도가 느림 솔레노이드를 통한 제어로 소모 전류가 높음 접점을…

---

## 릴레이

<div class="image-grid single">

<img src="../assets/switching-devices-18.png" alt="릴레이 설명 그림 18">

</div>

---

## 반도체 Package

- DIP (=Dual In-line Package) PCB를 관통해 바닥면에서 납땜하는 방식 크기 ↑ SMD (=Surface Mount Device) PCB 표…

---

## 반도체 Package · 그림 1

<div class="image-grid">

<img src="../assets/switching-devices-19.png" alt="반도체 Package 설명 그림 19">
<img src="../assets/switching-devices-20.png" alt="반도체 Package 설명 그림 20">

</div>

---

## 반도체 Package · 그림 2

<div class="image-grid">

<img src="../assets/switching-devices-21.png" alt="반도체 Package 설명 그림 21">
<img src="../assets/switching-devices-22.png" alt="반도체 Package 설명 그림 22">

</div>

---

## 다이오드

- PN 다이오드는 P형 반도체와 N형 반도체로 이루어진 소자 Anode(+)에서 Cathode(-)로 전류가 흐릅니다.

---

## 다이오드

<div class="image-grid">

<img src="../assets/switching-devices-23.png" alt="다이오드 설명 그림 23">
<img src="../assets/switching-devices-24.png" alt="다이오드 설명 그림 24">

</div>

---

## 원리

- 순방향 전압
- 역방향 전압

---

## 원리

<div class="image-grid">

<img src="../assets/switching-devices-25.png" alt="원리 설명 그림 25">
<img src="../assets/switching-devices-26.png" alt="원리 설명 그림 26">

</div>

---

## 트랜지스터 (=Bipolar Junction Transistor)

- 비교적 저렴한 비용 기계적 접점이 없는 반도체로 반영구적인 사용 기계적 접점이 없는 반도체로 속도가 릴레이 대비 빠름 반도체로 스위칭에 필요한 소모 전류 낮음 …

---

## 트랜지스터 (=Bipolar Junction Transistor)

<div class="image-grid">

<img src="../assets/switching-devices-27.png" alt="트랜지스터 (=Bipolar Junction Transistor) 설명 그림 27">
<img src="../assets/switching-devices-28.png" alt="트랜지스터 (=Bipolar Junction Transistor) 설명 그림 28">

</div>

---

## 절연 (=Isolation)

- Control Line - Load Line 절연 가능
- 노이즈 차단
- Control Line - Load Line 절연 불가능
- 노이즈 유입

---

## 절연 (=Isolation)

<div class="image-grid">

<img src="../assets/switching-devices-29.png" alt="절연 (=Isolation) 설명 그림 29">
<img src="../assets/switching-devices-30.png" alt="절연 (=Isolation) 설명 그림 30">

</div>

---

## 포토커플러 (=Optocoupler)

- 비교적 비싼 비용 기계적 접점이 없는 반도체로 반영구적인 사용 기계적 접점이 없는 반도체로 속도가 릴레이 대비 빠름 반도체로 스위칭에 필요한 소모 전류 낮음 고…

---

## 포토커플러 (=Optocoupler)

<div class="image-grid">

<img src="../assets/switching-devices-31.png" alt="포토커플러 (=Optocoupler) 설명 그림 31">
<img src="../assets/switching-devices-32.png" alt="포토커플러 (=Optocoupler) 설명 그림 32">

</div>

---

## Optocoupler vs Transistor

- Optocoupler
- 트랜지스터

---

## Optocoupler vs Transistor

<div class="image-grid">

<img src="../assets/switching-devices-33.png" alt="Optocoupler vs Transistor 설명 그림 33">
<img src="../assets/switching-devices-34.png" alt="Optocoupler vs Transistor 설명 그림 34">

</div>

---

## MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor)

- 트랜지스터 (=BJT) 대비 비쌈 빠른 스위칭 속도와 높은 효율 제공 전력소자 스위칭 용도로 많이 사용 (예: SMPS)

---

## MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) · 그림 1

<div class="image-grid">

<img src="../assets/switching-devices-35.png" alt="MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) 설명 그림 35">
<img src="../assets/switching-devices-36.png" alt="MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) 설명 그림 36">

</div>

---

## MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) · 그림 2

<div class="image-grid single">

<img src="../assets/switching-devices-37.png" alt="MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) 설명 그림 37">

</div>

---

## IGBT (=Insulated Gate Bipolar Transistor)

- 고전력 고속 스위칭 소자 모터 구동 스위치로 많이 사용됨 (예: 인버터, 모터 드라이브)

---

## IGBT (=Insulated Gate Bipolar Transistor) · 그림 1

<div class="image-grid">

<img src="../assets/switching-devices-38.png" alt="IGBT (=Insulated Gate Bipolar Transistor) 설명 그림 38">
<img src="../assets/switching-devices-39.png" alt="IGBT (=Insulated Gate Bipolar Transistor) 설명 그림 39">

</div>

---

## IGBT (=Insulated Gate Bipolar Transistor) · 그림 2

<div class="image-grid single">

<img src="../assets/switching-devices-40.png" alt="IGBT (=Insulated Gate Bipolar Transistor) 설명 그림 40">

</div>

---

## SSR (=Solid State Relay)

- 반도체로 만든 릴레이 SSR은 릴레이처럼 부하 전원을 제어하지만 기계적 접점이 없습니다.
- 반영구적으로 사용 할 수 있습니다.

---

## SSR (=Solid State Relay)

<div class="image-grid">

<img src="../assets/switching-devices-41.png" alt="SSR (=Solid State Relay) 설명 그림 41">
<img src="../assets/switching-devices-42.png" alt="SSR (=Solid State Relay) 설명 그림 42">

</div>

---

## 핵심 정리

- 스위치와 릴레이는 물리적 접점으로 회로를 연결하거나 차단했습니다.
- 트랜지스터와 MOSFET은 전기 신호로 빠르게 스위칭하는 반도체 소자였습니다.
- 포토커플러는 빛을 이용해 입력과 출력을 전기적으로 절연했습니다.
- SSR은 반도체로 부하를 스위칭하므로 빠르고 수명이 길지만 발열과 누설 전류를 고려해야 합니다.
