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

## 학습 목표

- 전압, 전류, 저항의 의미와 단위를 구분할 수 있습니다.
- 폐회로와 개회로에서 전류가 흐르는 조건을 설명할 수 있습니다.
- 옴의 법칙을 사용해 전압·전류·저항을 계산할 수 있습니다.

---

## 전기(電氣, Electricity)

- 전기를 조금 더 자세히 이해해보고자 잠시 화학 이야기를 시작합니다.
- 전체 교육 과정은 기계, 전기, 전자, PLC, 디지털 트윈, 소프트웨어, ROS2, 비전, 피지컬 AI로 구성했습니다.
- 이 장에서는 그중 전기·전자 분야의 가장 기초적인 내용을 다루었습니다.
- 각 기술은 서로 독립되어 있지 않고 많은 부분에서 연결되었습니다.
- 전기와 전자, 전기와 PLC, PLC와 소프트웨어는 서로 겹치는 개념이 많았습니다.

---

## 전압, 전류, 저항

- 전압은 두 지점 사이의 전위차이며 전하를 이동시키는 원인이 되었습니다.
- 도체의 양 끝에 전압을 가하면 도체 내부에 전기장이 형성되고 전하가 이동했습니다.
- 단위 시간 동안 흐르는 전하의 양을 전류라고 합니다.
- 실제 도체에서는 이동하는 전자가 원자 격자와 충돌했습니다.
- 이 과정에서 전기에너지의 일부가 열과 빛 등 다른 형태의 에너지로 변환되었습니다.

---

## 전압(電壓 : 전기의 압력, Voltage)

- 전압의 단위는 볼트(V)입니다.
- 영어 용어는 voltage이며, 물리량의 이름과 단위를 구분해야 합니다.
- 전압은 폐회로에서의 전위차에 의해 발생합니다.
- 그림과 같이 3V 전위를 갖는 낮은 전위와 27V 전위를 갖는 높은 전위가 있을 때, 이 둘의 전위차는 24V가 됩니다.
- (즉, 전압은 24V가 됩니다.) 도선에 전류가 흐르면 도선 주위에 자기장이 형성됩니다.

---

## 전압(電壓 : 전기의 압력, Voltage)

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-01.png" alt="전압(電壓 : 전기의 압력, Voltage) 설명 그림 1">

</div>

---

## 폐회로와 개회로

- 폐회로 (Closed Circuit) 닫힌 회로: 전기가 흐릅니다.
- 개회로 (Open Circuit) 열린 회로: 전기가 흐르지 않습니다.

---

## 폐회로와 개회로

<div class="image-grid">

<img src="../assets/voltage-current-resistance-02.png" alt="폐회로와 개회로 설명 그림 2">
<img src="../assets/voltage-current-resistance-03.png" alt="폐회로와 개회로 설명 그림 3">

</div>

---

## 기준 전압

- 표기된 27V와 3V는 기준점이 없기 때문에 의미 없는 수치입니다.
- 앞으로 우리는 이러한 도면에서의 전압 표기는 P24와 N24로 구분합니다.
- 24 V 전압원에서의 낮은 전위와 높은 전위를 구분합니다.
- 즉 폐회로에서의 기준이 되며, P24는 N24를 기준으로 24V의 전위를 갖고, N24는 P24를 기준으로 0V의 전위를 갖습니다.
- 이 기준에서는 N24V가 0V가 되는 것이지만, 다른 기준에서는 0V가 아닐 수 있다는 것은 매우 헷갈리는 개념입니다.

---

## 기준 전압

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-04.png" alt="기준 전압 설명 그림 4">

</div>

---

## 전류(電流 : 전기의 흐름, Ampere)

- 단위는 암페어(A)이며, 1 A는 1초 동안 1쿨롱(C)의 전하가 이동하는 전류입니다.
- 전자는 원자 내에서 마이너스 전하를 가진 입자로, 전위차가 존재할 때 전자는 낮은 전위에서 높은 전위로 이동하게 되는데 이것을 전류라고 합니다.
- 전압이 생기고 전류가 흐르면 도선 주위에 자기장이 형성되며, 그 즉시 전기의 효력이 발생하게 됩니다.
- 전류는 흐르는 방향에 따라 직류와 교류 2가지로 구분됩니다.

---

## 전자/전류 이동 방향

- 전자의 이동 방향 전자는 낮은 전위에서 높은 전위로 이동을 합니다.
- 전류의 이동 방향 전류는 높은 전위에서 낮은 전위로 이동을 합니다.
- 전자의 이동 방향을 과학적으로 측정하지 못했을 때, 당연히 높은 전위에서 낮은 전위로 이동할 것이라는 생각 때문에 과거부터 쌓여온 모든 문서는 높은 전위에서 낮…

---

## 전자/전류 이동 방향

<div class="image-grid">

<img src="../assets/voltage-current-resistance-05.png" alt="전자/전류 이동 방향 설명 그림 5">
<img src="../assets/voltage-current-resistance-06.png" alt="전자/전류 이동 방향 설명 그림 6">

</div>

---

## 쇼트 (단락, 短絡, Short Circuit)

- 전위차가 있는 폐회로는 전기가 흐른다는 것을 표현할 때 항상 부하(LOAD)를 포함하는 회로를 만듭니다.
- 이때, 부하가 존재하지 않는다면 전위차가 있는 만큼 최대 전류가 흐르게 됩니다.
- 이것을 쇼트라고 표현하며 고전류가 흐르게 되므로 매우 위험한 상황이 됩니다.
- 부하는 전류를 제한하게 하며, 이것을 저항 (抵抗, Resistance) 라 합니다.
- 전류를 제한하는 저항이 없으면 도선 내 열이 발생하고 터지게 됩니다.

---

## 쇼트 (단락, 短絡, Short Circuit)

<div class="image-grid">

<img src="../assets/voltage-current-resistance-07.png" alt="쇼트 (단락, 短絡, Short Circuit) 설명 그림 7">
<img src="../assets/voltage-current-resistance-08.png" alt="쇼트 (단락, 短絡, Short Circuit) 설명 그림 8">

</div>

---

## 저항 (抵抗, Resistance)

- 저항은 전기 회로에서 전류의 흐름을 방해하는 물질의 특성이며, 당위는 Ohm(Ω)을 사용합니다.
- 다양한 종류의 저항이 있고, 저항마다
- 저항의 수치가 다르며 아래 그림과 같이 색으로 구분을 합니다.
- 하지만 저항 값을 알기 위해 특별히 저항의 색상을 알고 있어야 하는 경우가 아니라면 그냥 테스터기로 저항 값을 알아내는 것을 추천합니다.
- 자주 사용하지 않으면 잊어버리게 됩니다.

---

## 저항 (抵抗, Resistance)

<div class="image-grid">

<img src="../assets/voltage-current-resistance-09.png" alt="저항 (抵抗, Resistance) 설명 그림 9">
<img src="../assets/voltage-current-resistance-10.png" alt="저항 (抵抗, Resistance) 설명 그림 10">

</div>

---

## 전압, 전류, 저항의 관계

- 전기과 혹은 전자과에서 아주 유명한 공식입니다.
- V = I×R V는 전압, I는 전류, R은 저항입니다.
- 이 공식에서 얻을 수 있는 내용은 아래와 같습니다.
- → 같은 전압에서 저항이 높으면 전류가 낮아집니다.
- → 같은 저항에서 전압이 높아지면 전류가 높아집니다.

---

## 전압, 전류, 저항의 관계

<div class="image-grid single">

<img src="../assets/voltage-current-resistance-11.png" alt="전압, 전류, 저항의 관계 설명 그림 11">

</div>

---

## 핵심 정리

- 전압은 전하를 움직이게 하는 전위차이며 단위는 볼트(V)입니다.
- 전류는 단위 시간 동안 이동한 전하의 양이며 단위는 암페어(A)입니다.
- 저항은 전류의 흐름을 방해하는 정도이며 단위는 옴(Ω)입니다.
- 옴의 법칙은 $V=IR$이며, 세 값 중 두 값을 알면 나머지 값을 계산할 수 있습니다.
