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

# 1-5. 배터리 구조 및 동작 원리

전기·전자 실무 기초

---

## 학습 목표

- 전지에서 산화·환원 반응이 전류를 만드는 과정을 설명할 수 있습니다.
- 1차 전지와 충전 가능한 2차 전지를 구분할 수 있습니다.
- 리튬이온 배터리의 네 가지 구성 요소와 충·방전 원리를 이해할 수 있습니다.

---

## 최초의 전지 - 볼타전지

- 서로 다른 두개의 금속판으로 아연판과 구리판을 사용합니다.
- 전기가 잘 통하는 액체가 필요한데, 소금물에 적신 종이를 준비합니다.

---

## 아연판

- 아연판의 아연 원자는 금속 결합을 이루고 있습니다.
- 아연판을 전해질에 담그면 일부 아연 원자가 전자 두 개를 남기고 $Zn^{2+}$ 이온으로 용출되었습니다.
- 이렇게 생성된 $Zn^{2+}$ 이온은 전해질 속으로 이동했고, 남은 전자는 아연판에 축적되었습니다.
- 그럼 아연판은 전자($e^-$) 들이 쌓이며 - 극을 만들어내게 됩니다.

---

## 구리판

- 이때 아연판이 음극이 되므로 구리판은 상대적으로 양극이 됩니다.
- 아연판과 구리판을 도선으로 연결하면 아연판에 쌓여 있던 전자가 구리판 쪽으로 이동했습니다.
- 이러한 전하의 흐름을 전류라고 합니다.
- 전선을 타고 구리판의 양극으로 이동한 전자는 전해질의 수소 이온($H^+$)과 반응했습니다.
- 수소 이온 두 개와 전자 두 개가 결합하면 수소 기체가 생성되어 구리판 표면에 기포로 나타났습니다($2H^+ + 2e^- \rightarrow H_2$).

---

## 리튬이온 배터리

- 앞서 이야기한 배터리는 한번 사용하고 마는 1차전지였습니다.
- 현대에는 충전과 방전을 반복할 수 있는 2차 전지를 널리 사용하며, 대표적인 예가 리튬이온 배터리입니다.
- 리튬은 지구상에서 가장 전자를 버리고 싶어하는 금속이기에 가볍고 작은 크기로 엄청나게 높은 전압을 만들어 낼 수 있습니다.

---

## 리튬 이온 배터리의 4대 구성 요소

- 음극 (=아연판): $C_6$
- 양극 (=구리판): $LiCoO_2$
- 유기 화합물 (=소금물): EC, DMC, DEC

---

## 리튬 이온 배터리의 충전과 방전

- 충전지에 외부 전압을 인가하면 전자가 도선을 통해 음극으로 이동했습니다.
- 이때 $Li^+$는 전해질을 통해 이동했으며, 양극 활물질의 조성은 $Li_{0.5}CoO_2$~$Li_{0.4}CoO_2$로 변했습니다.
- (리튬 전체가 이동하게 되면 배터리 기능을 할 수 없습니다.) 마찬가지로 음극은 $Li_{0.5}C_6$ ~ $Li_{0.4}C_6$ 이 됩니다.
- 충전지를 해제한 상태에서 음극과 양극을 도선으로 연결하면 $Li^+$ 는 유기화합물로 녹아 양극으로 이동하며, 전자($e^-$)는 도선을 통해 양극으로 이동하며…
- 이때, $Li_{0.5}CoO_2$ 이 $LiCoO_2$ 되면 완전히 방전된 상태로 더 이상 전압을 만들어내지 않습니다.

---

## 핵심 정리

- 전지는 두 전극 사이의 화학 반응으로 전위차를 만들었습니다.
- 방전할 때 전자는 외부 회로를 통해 음극에서 양극으로 이동했습니다.
- 리튬이온 배터리는 양극, 음극, 전해질, 분리막으로 구성되었습니다.
- 충전과 방전 과정에서는 전자와 리튬 이온이 서로 다른 경로로 이동했습니다.
