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

# 1-6. 변압기, 코일, 인덕터, 솔레노이드

전기·전자 실무 기초

---

## 학습 목표

- 전자기 유도와 코일의 기본 동작을 설명할 수 있습니다.
- 복권 변압기와 단권 변압기의 차이를 구분할 수 있습니다.
- 인덕터와 솔레노이드가 회로와 장치에서 하는 역할을 이해할 수 있습니다.

---

## 변압기 (Transformer)

- 변압기를 사용하면 1차측 전원에서 2차측 전원으로 전기가 전달됩니다.
- 전원에 연결된 구리선은 그림과 같이 코어를 감싸고 있는 형태인데 이를 코일이라고 합니다.
- 1차측에 연결된 코일과 2차측에 연결된 코일의 감기는 횟수에 따라 전압이 달라집니다.
- 이러한 원리로 변압기는 전압을 변경하는데 유용하게 사용됩니다.
- 이렇게 간단한 장치로 전압을 변경할 수 있기 때문에 교류 전원이 레벨 변경은 비교적 저렴합니다.

---

## 변압기 (Transformer)

<div class="image-grid">

<img src="../assets/transformer-coil-01.png" alt="변압기 (Transformer) 설명 그림 1">
<img src="../assets/transformer-coil-02.png" alt="변압기 (Transformer) 설명 그림 2">

</div>

---

## 전류의 손실

- 전류는 이동을 할 때 손실이 발생하며 손실은 Ploss = I^2×R로 구합니다.
- 손실을 줄이기 위해서는 저항(R)을 낮추거나 전류(I)를 낮춰야 하는데, 저항을 낮추는 것은 물리적으로 한계가 있습니다.
- 같은 전력을 공급할 때, 전압을 높이면 전류를 낮출 수 있기 때문에 손실을 줄일 수 있습니다.
- 높은 전압(765kV)으로 공급 후 가정이나 공장에서 전압을 낮춰 사용합니다.
- (변압기, Down 변압기)

---

## 복권 변압기

- 앞서 공부했던 변압기는 복권 변압기라고 합니다.
- 1차측과 2차측이 서로 다른 코일로 분리가 되어 있는 형태인데, 코일을 분리해서 사용하기 때문에 비교적 비싸며 무겁습니다.
- 다만, 1차측과 2차측이 완전히 절연되어 있어 노이즈 유입이 차단되는 장점이 있습니다.
- 절연(絕緣): 관계를 완전히 끊음 1:1 변압기 로 노이즈 필터 로도 사용

---

## 복권 변압기

<div class="image-grid single">

<img src="../assets/transformer-coil-03.png" alt="복권 변압기 설명 그림 3">

</div>

---

## 단권 변압기

- 복권 변압기와 다르게 코일이 한 개만 있는 변압기를 단권 변압기라 합니다.
- 1차측과 2차측의 코일을 공유하기 때문에 비용이 복권 변압기 대비 저렴하고 크기가 작고 가볍습니다.
- 다만, 1차측과 2차측이 절연되어 있지 않기 때문에 노이즈 유입의 통로가 되기도 합니다.

---

## 단권 변압기

<div class="image-grid single">

<img src="../assets/transformer-coil-04.png" alt="단권 변압기 설명 그림 4">

</div>

---

## 코일과 변압기

- 전선을 나선형으로 감은 구조를 가진 도체
- 전류가 흐르면 강한 자기장이 형성됩니다.
- 코일의 자기장은 전류의 방향과 전선의 감김 상태에 따라 달라집니다.
- 코일에 흐른 전류로 인해 자기장이 형성됩니다.
- 형성된 자기장에 의해 큰처에 있는 코일에 전류가 유도됩니다.

---

## 코일과 변압기

<div class="image-grid">

<img src="../assets/transformer-coil-05.png" alt="코일과 변압기 설명 그림 5">
<img src="../assets/transformer-coil-06.png" alt="코일과 변압기 설명 그림 6">

</div>

---

## 인덕터

- 전압이 증가하면 저항이 증가
- 전압이 공급되면 역기전력이 발생
- 전압이 차단되면 역기전력으로 인한 회생전력 발생

---

## 인덕터

<div class="image-grid">

<img src="../assets/transformer-coil-07.png" alt="인덕터 설명 그림 7">
<img src="../assets/transformer-coil-08.png" alt="인덕터 설명 그림 8">

</div>

---

## 인덕터의 이해

- 자동차가 출발하거나 멈출 때 가속시간과 감속시간이 필요
- 사람이 달리기를 시작하거나 멈출 때 가속시간과 감속시간이 필요

---

## 인덕터의 이해

<div class="image-grid single">

<img src="../assets/transformer-coil-09.png" alt="인덕터의 이해 설명 그림 9">

</div>

---

## 솔레노이드

- 코일의 한 종류로, 나선형으로 감긴 긴 전선으로 구성된 구조
- 보통 직선 모양의 원통형 형태
- 전류가 흐를 때, 솔레노이드 내부에 강한 자기장 형성
- 솔레노이드 밸브
- 솔레노이드 액추에이터

---

## 솔레노이드

<div class="image-grid">

<img src="../assets/transformer-coil-10.png" alt="솔레노이드 설명 그림 10">
<img src="../assets/transformer-coil-11.png" alt="솔레노이드 설명 그림 11">

</div>

---

## 핵심 정리

- 변압기는 교류와 권선비를 이용해 전압을 변환했습니다.
- 복권 변압기는 1차측과 2차측이 절연되지만 단권 변압기는 전기적으로 연결되었습니다.
- 인덕터는 전류의 급격한 변화를 방해하고 자기장에 에너지를 저장했습니다.
- 솔레노이드는 코일의 자기장을 직선 운동으로 바꾸는 액추에이터였습니다.
