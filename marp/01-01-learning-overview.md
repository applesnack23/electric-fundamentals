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

# 1-1. 전체 학습 주제 개요 및 기대 학습 성과 이해

전기·전자 실무 기초

---

## 학습 목표

- 전기·전자·PLC·임베디드·소프트웨어의 관계를 설명할 수 있습니다.
- 컨베이어 실습이 전체 학습 과정에서 어떤 역할을 하는지 이해할 수 있습니다.
- 앞으로 학습할 기술의 순서와 최종 목표를 파악할 수 있습니다.

---

## 학습을 시작하며

- 기계 설계 과목을 끝냈습니다.
- 기초적인 내용만 진행을 했고, 오늘부터 기계 관련해서는 프로젝트 단위로 추가적인 내용을 공유할 예정입니다.
- 과정은 기초와 고급으로 구분했습니다.
- 필자 역시도 조금 더 복잡한 프로젝트는 시간이 걸립니다.
- 회사에서 했던 프로젝트들은 보안 문제가 있습니다.

---

## 학습을 시작하며

<div class="image-grid single">

<img src="../assets/learning-overview-01.png" alt="학습을 시작하며 설명 그림 1">

</div>

---

## 전체 학습 로드맵

- 우리는 이제 전기, 전자, 임베디드, PLC, Linux, Python, Web, ROS2를 위한 기초 과정을 시작하게 됩니다.
- 오늘은 그 이야기를 조금 더 상세히 해보고자 합니다.
- 전기회로 2.
- PLC 3.
- 전자회로 4.

---

## 전기회로 학습

- 오로지 전기 내용만을 갖고 컨베이어 한 개를 왕복 구동하게 만들어 봅니다.
- 이 과정에서 얻을 수 있는 내용을 다음과 같이 정리했습니다.
- 모터 구동 회로를 구성하고 센서 입력과 메모리 기능을 추가했습니다.
- 조건에 따라 컨베이어를 정방향 또는 역방향으로 회전하도록 구성했습니다.
- 이게 전기에서 이야기하는 시퀀스 회로, 즉 전기적인 프로그램 회로를 만드는 첫 번째 단계입니다.

---

## 전기회로 학습

<div class="image-grid single">

<img src="../assets/learning-overview-02.png" alt="전기회로 학습 설명 그림 2">

</div>

---

## PLC 학습

- 릴레이는 공장 자동화의 기본 제어 소자입니다.
- 복잡한 릴레이 제어 기능을 프로그램으로 구현할 수 있도록 만든 대표적인 장치가 PLC입니다.
- 그래서 전기 이후에 PLC를 진행하게 되며, 전기 기초에서 만들었던 단순 동작 반복 시작으로 좀 더 복잡한 컨베이어와 로봇을 사용해 물류 라인을 제어해 봅니다.
- 단순히 컨베이어 한 개가 아니라 좀 더 복잡한 시나리오로 시퀀스 동작이 가능하도록 할 예정입니다.
- 다만, 개인이 가정에 이러한 환경을 구축하기에는 많은 비용이 소요됩니다.

---

## PLC 학습

<div class="image-grid single">

<img src="../assets/learning-overview-03.png" alt="PLC 학습 설명 그림 3">

</div>

---

## 전자회로 학습

- 전기 제어회로에서 릴레이가 스위치 역할을 한다면, 전자회로에서는 트랜지스터가 비슷한 역할을 했습니다.
- 전기와 전자는 다루는 전압, 전력, 부품과 적용 분야가 서로 겹치므로 명확한 경계를 정하기 어렵습니다.
- 다만, 하는 일에는 조금 차이가 있는데 전기는 주로 전기 패널과 케이블을 만들고, 전자는 PCB와 케이블을 만듭니다.
- 전기회로에서 만들었던 전기 패널을 전자회로로 변경해 PCB로 만들어 봅니다.
- 앞서 릴레이를 사용해 만들었던 패널을 트랜지스터를 사용해 PCB로 만들어 보려고 합니다.

---

## 전자회로 학습 · 그림 1

<div class="image-grid">

<img src="../assets/learning-overview-04.png" alt="전자회로 학습 설명 그림 4">
<img src="../assets/learning-overview-05.png" alt="전자회로 학습 설명 그림 5">

</div>

---

## 전자회로 학습 · 그림 2

<div class="image-grid single">

<img src="../assets/learning-overview-06.png" alt="전자회로 학습 설명 그림 6">

</div>

---

## 임베디드 학습

- 네 번째 주제에서는 임베디드 환경을 구축했습니다.
- 릴레이 회로를 소형화한 것이 PLC라면, 트랜지스터 회로를 소형화한 것은 마이크로컨트롤러입니다.
- 마이크로컨트롤러를 사용한 시스템을 주로 임베디드 시스템이라고 합니다.
- 임베디드 환경은 크게 두 가지로 구분했습니다.
- OS가 있느냐 없느냐입니다.

---

## 임베디드 학습

<div class="image-grid single">

<img src="../assets/learning-overview-07.png" alt="임베디드 학습 설명 그림 7">

</div>

---

## Linux와 Python 학습

- 이번에는 OS가 있는 환경에서 구동을 해보기 위해 OS 중 하나인 Linux를 사용합니다.
- 가정용 PC에 Linux 환경을 구성할 수도 있습니다.
- 여기서는 라즈베리파이라고 하는 컨트롤러를 사용합니다.
- 라즈베리파이는 아두이노나 ESP32와 다르게 마이크로컨트롤러라고 보기보다는 미니PC에 가깝습니다.
- 이 라즈베리파이와 파이썬을 사용해 컨베이어와 로봇을 구동합니다.

---

## 웹 환경 학습

- 자바스크립트와 웹 환경을 학습합니다.
- 여태까지 만들었던 환경은 User Interface를 구현하는 데 무리가 있었습니다.
- PLC 나 아두이노, 또 라즈베리파이에서 구동되는 컨베이어를 외부에서 조작하는 가장 간단한 방법입니다.
- 최근에는 바이브 코딩과 자동 코딩 방식이 널리 활용되고 있습니다.
- 코딩 역시 인공지능으로 대체되므로 공부할 필요가 없다는 의견도 있었습니다.

---

## ROS2 학습

- 마지막 주제는 ROS2입니다.
- 이 컨베이어와 로봇을 Linux 환경에서도 ROS2를 사용합니다.
- ROS2는 Robot Operating System의 약자로 로봇 소프트웨어를 개발하기 위한 미들웨어와 도구 모음입니다.
- Linux와 운영체제 과정에서 더 자세히 다루었습니다.
- 한 명이 개발할 때는 비교적 자유롭게 구성할 수 있습니다.

---

## 핵심 정리

- 하나의 자동화 설비에는 기계, 전기, 전자, 제어, 소프트웨어 기술이 함께 사용되었습니다.
- 컨베이어는 센서 입력, 모터 출력, 제어 로직을 한 번에 경험하기 좋은 실습 장치였습니다.
- 기초 개념을 익힌 뒤 PLC, 임베디드, Linux, 웹, ROS2 순으로 학습 범위를 확장했습니다.
