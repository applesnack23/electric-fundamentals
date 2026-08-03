# 1-10. NPN/PNP 타입, Sink/Source 출력 구성 방식 이해

센서와 PLC를 연결할 때 가장 자주 혼동하는 개념이 NPN/PNP와 Sink/Source입니다. 전류가 어느 방향으로 흐르는지 하나씩 추적하면 결선 방식을 안전하게 판단할 수 있습니다.

---

#### 학습 목표

- NPN과 PNP 트랜지스터 출력의 차이를 설명할 수 있습니다.
- Sink와 Source를 전류 방향을 기준으로 구분할 수 있습니다.
- 센서와 PLC 입출력 모듈의 호환 결선을 판단할 수 있습니다.

---
#### NPN 트랜지스터

![NPN 트랜지스터 설명 그림 1](../assets/npn-pnp-01.png)

Open Collector Type

---

#### PNP 트랜지스터

![PNP 트랜지스터 설명 그림 2](../assets/npn-pnp-02.png)

Open Collector Type

---

#### NPN Type Sensor

![NPN Type Sensor 설명 그림 3](../assets/npn-pnp-03.png)

---

#### PNP Type Sensor

![PNP Type Sensor 설명 그림 4](../assets/npn-pnp-04.png)

---

#### Source Type Input

![Source Type Input 설명 그림 5](../assets/npn-pnp-05.png)

---

#### Sink Type Input

![Sink Type Input 설명 그림 6](../assets/npn-pnp-06.png)

---

#### PLC - Source Type Input Common

![PLC - Source Type Input Common 설명 그림 7](../assets/npn-pnp-07.png)

---

#### PLC - Sink Type Input Common

![PLC - Sink Type Input Common 설명 그림 8](../assets/npn-pnp-08.png)

---

#### PLC - Source Type Output Common

![PLC - Source Type Output Common 설명 그림 9](../assets/npn-pnp-09.png)

---

#### PLC - Sink Type Output Common

![PLC - Sink Type Output Common 설명 그림 10](../assets/npn-pnp-10.png)

---

#### 요약

- Sink Type Output - Source Type Input
- Source Type Output - Sink Type Input
- Sink Type Common - Positive
- Source Type Common - Negative

---

#### PLC - 릴레이 Type Output

![PLC - 릴레이 Type Output 설명 그림 11](../assets/npn-pnp-11.png)

---

#### 센서 도면 해석

신호선

- NPN 출력
- PNP 출력

![센서 도면 해석 설명 그림 12](../assets/npn-pnp-12.png)

동작 모드

- Light ON
- Dark ON

![센서 도면 해석 설명 그림 13](../assets/npn-pnp-13.png)

---

#### 투과형 (Dark On / Light ON)

![투과형 (Dark On / Light ON) 설명 그림 14](../assets/npn-pnp-14.png)

![투과형 (Dark On / Light ON) 설명 그림 15](../assets/npn-pnp-15.png)

---

#### 반사형 (Dark On / Light ON)

![반사형 (Dark On / Light ON) 설명 그림 16](../assets/npn-pnp-16.png)

![반사형 (Dark On / Light ON) 설명 그림 17](../assets/npn-pnp-17.png)

---

#### 출력

갈색 (Brown)

- P24

청색 (Blue)

- N24

흑색 (Black)

- Signal
- NPN : Signal -
- PNP : Signal +

![출력 설명 그림 18](../assets/npn-pnp-18.png)

---

#### PLC Module

**입력 모듈**

**출력 모듈**

**입출력 혼합 모듈**

![PLC Module 설명 그림 19](../assets/npn-pnp-19.png)

---

#### 입력 모듈 사양

![입력 모듈 사양 설명 그림 20](../assets/npn-pnp-20.png)

---

#### 입력 모듈 외부 결선도

![입력 모듈 외부 결선도 설명 그림 21](../assets/npn-pnp-21.png)

---

#### 센서 연결

![센서 연결 설명 그림 22](../assets/npn-pnp-22.png)

---

#### 입력 연결

![입력 연결 설명 그림 23](../assets/npn-pnp-23.png)

---

#### 출력 모듈 사양

![출력 모듈 사양 설명 그림 24](../assets/npn-pnp-24.png)

---

#### 출력 모듈 외부 결선도

![출력 모듈 외부 결선도 설명 그림 25](../assets/npn-pnp-25.png)

---

#### 출력 연결

![출력 연결 설명 그림 26](../assets/npn-pnp-26.png)

---

#### 핵심 정리

- NPN 오픈 컬렉터 출력은 부하 전류를 0V 쪽으로 흘리는 방식이었습니다.
- PNP 출력은 부하 쪽으로 양의 전압과 전류를 공급하는 방식이었습니다.
- Sink/Source라는 이름은 장치 하나가 아니라 서로 연결된 입력과 출력의 관계로 판단해야 합니다.
- 결선 전에는 센서와 PLC 모듈의 데이터시트, 공통 단자, 정격 전압을 반드시 확인해야 합니다.
