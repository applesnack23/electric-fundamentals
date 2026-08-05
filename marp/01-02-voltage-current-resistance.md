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

# 1-2. 전압, 전류, 저항의 개념

전기·전자 실무 기초

---

## 전기(電氣, Electricity)

- 전기는 전하의 이동과 그에 따른 여러 현상을 다루는 분야입니다.
- 전기 회로를 이해하려면 전압, 전류, 저항의 의미와 세 개념이 서로 어떤 관계를 맺는지 먼저 알아야 합니다.

---

## 전압, 전류, 저항

- 전압 : 전자를 이동시키는 힘
- 전류 : 전자가 이동하는 흐름
- 저항 : 전자의 이동을 방해하는 성질

---

## 전압(電壓, Voltage)

- 전압은 전기를 흐르게 하는 힘이며, 단위는 볼트(Volt, V)를 사용합니다.
- 전압은 반드시 전위차(Potential Difference)가 있을 때 발생합니다.
- 예를 들어 한 지점의 전위가 27V이고 다른 지점의 전위가 3V라면 두 지점의 전위차는 24V입니다.
- 즉, 실제 전압은 24V가 됩니다.
- 전압이 형성되면 도선 주변에는 전기장이 형성되며, 전류가 흐르면 자기장도 함께 형성됩니다.

---

## 전압(電壓, Voltage)

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-01.png" alt="전압(電壓, Voltage)">

</div>

---

## 폐회로(Closed Circuit)

- 폐회로는 회로가 완전히 연결된 상태를 의미합니다.
- 회로가 닫혀 있으므로 전류가 흐를 수 있습니다.

---

## 폐회로(Closed Circuit)

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-02.png" alt="폐회로(Closed Circuit)">

</div>

---

## 개회로(Open Circuit)

- 개회로는 회로가 끊어진 상태를 의미합니다.
- 회로가 열려 있으므로 전류가 흐르지 않습니다.

---

## 개회로(Open Circuit)

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-03.png" alt="개회로(Open Circuit)">

</div>

---

## 기준 전압

- P24 : +24V
- N24 : 0V

---

## 기준 전압

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-04.png" alt="기준 전압">

</div>

---

## 전류(電流, Current)

- 전류는 전자가 이동하는 흐름입니다.
- 단위는 암페어(Ampere, A)를 사용합니다.
- 1A는 1초 동안 1쿨롱(C)의 전하가 이동하는 양을 의미합니다.
- 전압이 발생하면 자유전자가 이동하게 되고, 그 결과 전류가 흐르게 됩니다.
- 전류가 흐르면 도선 주변에는 자기장이 형성되며 다양한 전기적 현상이 발생합니다.

---

## 전자의 이동 방향

- 왼쪽 그림은 전자의 실제 이동 방향으로 낮은 전위에서 높은 전위로 이동합니다.
- 반면 전류는 오른쪽 그림과 같이 높은 전위에서 낮은 전위 방향으로 정의되어 있습니다.
- 이는 전자의 실제 이동 방향이 밝혀지기 전에 전류의 방향을 먼저 정의했기 때문입니다.
- 현재도 대부분의 전기 회로와 교재에서는 전류의 방향을 기준으로 설명하고 있습니다.
- 우리는 높은 전위에서 낮은 전위로 이동하는 전류만 기억을 하면 됩니다.

---

## 전자의 이동 방향

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-05.png" alt="전자의 이동 방향">

</div>

---

## 쇼트(단락, Short Circuit)

- 전류가 흐르는 회로에는 일반적으로 부하(Load)가 존재합니다.
- 하지만 부하 없이 전원을 직접 연결하면 매우 큰 전류가 흐르게 됩니다.
- 이러한 상태를 쇼트(Short Circuit) 또는 단락이라고 합니다.
- 쇼트가 발생하면 매우 큰 전류가 흐르면서 도선이 과열되고 화재나 장비 손상이 발생할 수 있습니다.
- 따라서 회로에는 반드시 전류를 적절하게 제한하는 요소가 필요합니다.

---

## 쇼트(단락, Short Circuit)

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-06.png" alt="쇼트(단락, Short Circuit)">

</div>

---

## 저항(抵抗, Resistance)

- 저항은 전류의 흐름을 방해하는 성질이며, 단위는 옴(Ohm, Ω)을 사용합니다.
- 저항은 다양한 종류와 값을 가지며 일반적으로 색 띠(Color Code)를 이용하여 값을 표시합니다.
- 다만 실무에서는 색 띠를 모두 외우기보다는 테스터기를 이용하여 저항 값을 측정하는 경우가 훨씬 많습니다.
- 자주 사용하지 않는다면 색 띠를 암기하는 것보다
- 측정 방법을 익히는 것이 더욱 효율적입니다.

---

## 저항(抵抗, Resistance)

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-07.png" alt="저항(抵抗, Resistance)">

</div>

---

## 전압, 전류, 저항의 관계

- V : 전압(Voltage)
- I : 전류(Current)
- R : 저항(Resistance)
- 같은 전압에서는 저항이 커질수록 전류는 작아집니다.
- 같은 저항에서는 전압이 높아질수록 전류는 커집니다.

---

## 전압, 전류, 저항의 관계

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-08.png" alt="전압, 전류, 저항의 관계">

</div>
