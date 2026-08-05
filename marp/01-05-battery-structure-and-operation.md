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

# 1-5. 배터리 구조 및 동작 원리 (건전지, 리튬이온 배터리 충, 방전 원리)

전기·전자 실무 기초

---

## 최초의 전지 - 볼타전지

- 서로 다른 두 종류의 금속인 아연판(Zn)과 구리판(Cu)을 사용합니다.
- 전기가 흐를 수 있는 전해질로 소금물에 적신 종이를 사용합니다.

---

## 아연판

- 아연은 금속 원소이므로 내부에서는 금속 결합을 하고 있습니다.
- 금속 결합은 양이온인 $Zn^{2+}$ 사이를 자유전자가 이동하며 결합을 유지하는 구조입니다.
- 아연판이 소금물과 만나면 일부 아연 원자가 전자를 잃고 이온화됩니다.
- 생성된 아연 이온($Zn^{2+}$)은 소금물 속으로 녹아 들어가고, 잃어버린 전자는 아연판 내부에 남게 됩니다.
- 이 과정이 계속되면서 아연판에는 전자가 점점 많아지고, 결과적으로 **음극(-극)**이 형성됩니다.

---

## 구리판

- 구리판에서는 아연처럼 금속이 녹아 나오지는 않습니다.
- 아연판에 축적된 전자는 도선을 따라 구리판으로 이동합니다.
- 이 전자의 이동이 바로 **전류**입니다.
- 구리판에 도착한 전자는 소금물 속의 수소 이온($H^+$)과 반응하여 수소 기체를 생성합니다.
- 생성된 수소 기체는 구리판 표면에 작은 기포 형태로 나타납니다.

---

## 볼타 전지의 특징

- 수소 기체가 발생하여 성능이 점차 감소합니다.
- 한 번 사용하면 다시 충전하여 사용할 수 없습니다.
- 출력과 효율이 낮습니다.

---

## 리튬 이온 배터리

- 앞에서 살펴본 볼타 전지는 한 번 사용하면 다시 사용할 수 없는 **1차 전지**입니다.
- 현대에는 충전과 방전을 반복할 수 있는 **2차 전지**가 널리 사용되고 있으며, 그 대표적인 예가 리튬 이온 배터리입니다.
- 리튬은 매우 가벼우면서도 전자를 잃기 쉬운 금속입니다.
- 이러한 특성 덕분에 작은 크기에서도 높은 전압과 높은 에너지 밀도를 얻을 수 있어 스마트폰, 노트북, 전기자동차 등에 가장 많이 사용되고 있습니다.

---

## 리튬 이온 배터리의 구성

- 음극(Anode) : 흑연(Graphite, $C_6$)
- 양극(Cathode) : 리튬 코발트 산화물($LiCoO_2$)
- 전해질(Electrolyte) : EC, DMC, DEC 등의 유기 전해액
- 분리막(Separator) : 양극과 음극이 직접 접촉하지 않도록 분리하는 절연막
- 음극 → 아연판

---

## 리튬 이온 배터리의 충전

- 충전기를 연결하면 외부 전압이 배터리에 인가됩니다.
- 외부 전압에 의해 전자는 양극에서 음극으로 강제로 이동합니다.
- 리튬 이온($Li^+$) 역시 전해질을 통하여 음극으로 이동하며 흑연 내부에 저장됩니다.
- 이 과정에서 양극의 리튬은 일부만 이동합니다.
- 예를 들어 $LiCoO_2$ 는 $Li_{0.5}CoO_2$ 또는 $Li_{0.4}CoO_2$ 와 같은 상태가 됩니다.

---

## 리튬 이온 배터리의 방전

- 리튬 이온($Li^+$)은 전해질 내부를 이동합니다.
- 전자($e^-$)는 도선을 따라 이동합니다.

---

## 1차 전지와 2차 전지의 차이

- 핵심 개념을 그림과 함께 확인했습니다.

---

## 리튬이온 배터리

- 앞서 이야기한 배터리는 한번 사용하고 마는 1차전지였다.
- 현대에는 충전과 방전을 반복할 수 있는 2차전지를 많이 사용하게 되는데, 이 때 많이 사용되는 재료가 리튬을 사용한 리튬이온 배터리다.
- 리튬은 지구상에서 가장 전자를 버리고 싶어하는 금속이기에 가볍고 작은 크기로 엄청나게 높은 전압을 만들어 낼 수 있다.

---

## 리튬 이론 배터리의 4대 구성 요소

- 음극 (=아연판): $C_6$
- 양극 (=구리판): $LiCoO_2$
- 유기 화합물 (=소금물): EC, DMC, DEC

---

## 리튬 이온 배터리의 충전과 방전

- 충전지에 외부 전압을 강제 입력하면, 전자가 도선을 통해 음극으로 강제 이동 되는데, 이 때 $Li^+$ 는 유기 화합물에 녹아 $Li_{0.5}CoO_2$ ~…
- 충전지를 해제한 상태에서 음극과 양극을 도선으로 연결하면 $Li^+$ 는 유기화합물로 녹아 양극으로 이동하며, 전자($e^-$) 는 도선을 통해 양극으로 이동하…
- 이 때, $Li_{0.5}CoO_2$ 이 $LiCoO_2$ 되면 완전히 방전된 상태로 더 이상 전압을 만들어 내지 않는다.
- 다시 외부 전압을 강제 입력하면, 음극은 $Li_{0.5}C_6$ 이 되고, 양극은 $Li_{0.5}CoO_2$ 이 되서 전압을 만들 수 있는 상태가 됩니다.
