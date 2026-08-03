# 1-9. 스위치, 트랜지스터, 릴레이, SSR, 포토커플러, MC, MOSFET의 동작 원리와 적용

자동화 회로는 작은 제어 신호로 더 큰 전류를 켜고 끄는 장치를 사용합니다. 기계식 스위치부터 릴레이, 트랜지스터, MOSFET, SSR까지 동작 속도와 절연, 허용 전류를 비교했습니다.

---

#### 학습 목표

- 접점과 시퀀스 회로의 기본 동작을 설명할 수 있습니다.
- 릴레이와 반도체 스위칭 소자의 장단점을 비교할 수 있습니다.
- 부하 종류에 따라 적절한 스위칭 소자를 선택하는 기준을 이해할 수 있습니다.

---
#### 스위치

![스위치 설명 그림 1](../assets/switching-devices-01.png)

- 표시등
- 누름버튼 스위치
- 조광형 누름버튼 스위치
- 셀렉터 스위치
- 조광형 셀렉터 스위치

![스위치 설명 그림 2](../assets/switching-devices-02.png)

![스위치 설명 그림 3](../assets/switching-devices-03.png)

---

#### 표시등 (=LAMP)

![표시등 (=LAMP) 설명 그림 4](../assets/switching-devices-04.png)

사양에 따른 전압을 공급하면 표시등을 ON 할 수 있습니다.

---

#### 스위치 회로

![스위치 회로 설명 그림 5](../assets/switching-devices-05.png)

![스위치 회로 설명 그림 6](../assets/switching-devices-06.png)

- Normal Closed (NC) : 1 → 2
    - B접점 또는 B-Contact
- Normal Open (NO) : 4 → 3
    - A접점 또는 A-Contact
- Lamp : x1 → x2

![스위치 회로 설명 그림 7](../assets/switching-devices-07.png)

- 버튼을 누를 때 램프에 불이 들어오게 하는 배선도

---

#### 소자 설명

스위치 장치

![소자 설명 설명 그림 8](../assets/switching-devices-08.png)

DC 배터리 장치

![소자 설명 설명 그림 9](../assets/switching-devices-09.png)

부하 (Lamp, Motor 등)

![소자 설명 설명 그림 10](../assets/switching-devices-10.png)

---

#### 시퀀스 회로

- A 접점을 사용해서 Lamp On

![시퀀스 회로 설명 그림 11](../assets/switching-devices-11.png)

- B 접점을 사용해서 Lamp Off

![시퀀스 회로 설명 그림 12](../assets/switching-devices-12.png)

---

#### 스위치 종류

![스위치 종류 설명 그림 13](../assets/switching-devices-13.png)

누름 스위치

- 누르면 ON, 떼면 OFF
- 누르면 OFF, 떼면 ON

셀렉터 스위치

- 왼쪽 OFF, 오른쪽 ON
- 왼쪽 ON, 오른쪽 OFF

토글 스위치

- 왼쪽 ON, 오른쪽 OFF
- 왼쪽 OFF, 오른쪽 ON

비상 스위치

- Lock OFF, Release ON
- Lock ON, Release OFF

---

#### 접점 추가

![접점 추가 설명 그림 14](../assets/switching-devices-14.png)

---

#### DO (=Digital Output)

- Source (원천, 근원, 출처, 얻다)

![DO (=Digital Output) 설명 그림 15](../assets/switching-devices-15.png)

- Sink (빠지다, 가라앉다)

![DO (=Digital Output) 설명 그림 16](../assets/switching-devices-16.png)

- 부하를 기준으로 극성이 변경

![DO (=Digital Output) 설명 그림 17](../assets/switching-devices-17.png)

---

#### 릴레이

![릴레이 설명 그림 18](../assets/switching-devices-18.png)

자동제어에서 가장 많이 사용됨

기계적인 접점이 존재하기 때문에 소모성 제품

기계적인 접점 동작으로 속도가 느림

솔레노이드를 통한 제어로 소모 전류가 높음

접점을 통한 고전류를 개폐 가능

제어라인과 접점 라인이 완전히 분리

---

#### 반도체 Package

DIP (=Dual In-line Package)

PCB를 관통해 바닥면에서 납땜하는 방식

크기 ↑

![반도체 Package 설명 그림 19](../assets/switching-devices-19.png)

![반도체 Package 설명 그림 20](../assets/switching-devices-20.png)

SMD (=Surface Mount Device)

PCB 표면에서 납땜하는 방식

크기 ↓

![반도체 Package 설명 그림 21](../assets/switching-devices-21.png)

![반도체 Package 설명 그림 22](../assets/switching-devices-22.png)

---

#### 다이오드

![다이오드 설명 그림 23](../assets/switching-devices-23.png)

PN 다이오드는 P형 반도체와 N형 반도체로 이루어진 소자

Anode(+)에서 Cathode(-)로 전류가 흐릅니다.

![다이오드 설명 그림 24](../assets/switching-devices-24.png)

---

#### 원리

- 순방향 전압

![원리 설명 그림 25](../assets/switching-devices-25.png)

공핍층이 없어짐

- 역방향 전압

![원리 설명 그림 26](../assets/switching-devices-26.png)

공핍층이 커짐

---

#### 트랜지스터 (=Bipolar Junction Transistor)

![트랜지스터 (=Bipolar Junction Transistor) 설명 그림 27](../assets/switching-devices-27.png)

![트랜지스터 (=Bipolar Junction Transistor) 설명 그림 28](../assets/switching-devices-28.png)

비교적 저렴한 비용

기계적 접점이 없는 반도체로 반영구적인 사용

기계적 접점이 없는 반도체로 속도가 릴레이 대비 빠름

반도체로 스위칭에 필요한 소모 전류 낮음

고전류 제어 불가

---

#### 절연 (=Isolation)

![절연 (=Isolation) 설명 그림 29](../assets/switching-devices-29.png)

릴레이

- Control Line - Load Line 절연 가능
- 노이즈 차단

![절연 (=Isolation) 설명 그림 30](../assets/switching-devices-30.png)

트랜지스터

- Control Line - Load Line 절연 불가능
- 노이즈 유입

** 노이즈는 주로 그라운드를 타고 넘어옵니다.

---

#### 포토커플러 (=Optocoupler)

![포토커플러 (=Optocoupler) 설명 그림 31](../assets/switching-devices-31.png)

![포토커플러 (=Optocoupler) 설명 그림 32](../assets/switching-devices-32.png)

비교적 비싼 비용

기계적 접점이 없는 반도체로 반영구적인 사용

기계적 접점이 없는 반도체로 속도가 릴레이 대비 빠름

반도체로 스위칭에 필요한 소모 전류 낮음

고전류 제어 불가

트랜지스터 와 다르게 전원 분리 가능

---

#### Optocoupler vs Transistor

- Optocoupler

![Optocoupler vs Transistor 설명 그림 33](../assets/switching-devices-33.png)

- 트랜지스터

![Optocoupler vs Transistor 설명 그림 34](../assets/switching-devices-34.png)

---

#### MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor)

![MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) 설명 그림 35](../assets/switching-devices-35.png)

트랜지스터 (=BJT) 대비 비쌈

빠른 스위칭 속도와 높은 효율 제공

전력소자 스위칭 용도로 많이 사용 (예: SMPS)

![MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) 설명 그림 36](../assets/switching-devices-36.png)

![MOSFET (=Metal-Oxide-Semiconductor Field-Effect Transistor) 설명 그림 37](../assets/switching-devices-37.png)

---

#### IGBT (=Insulated Gate Bipolar Transistor)

고전력 고속 스위칭 소자

모터 구동 스위치로 많이 사용됨

(예: 인버터, 모터 드라이브)

![IGBT (=Insulated Gate Bipolar Transistor) 설명 그림 38](../assets/switching-devices-38.png)

![IGBT (=Insulated Gate Bipolar Transistor) 설명 그림 39](../assets/switching-devices-39.png)

![IGBT (=Insulated Gate Bipolar Transistor) 설명 그림 40](../assets/switching-devices-40.png)

---

#### SSR (=Solid State Relay)

![SSR (=Solid State Relay) 설명 그림 41](../assets/switching-devices-41.png)

반도체로 만든 릴레이

SSR은 릴레이처럼 부하 전원을 제어하지만 기계적 접점이 없습니다.
반영구적으로 사용 할 수 있습니다.

![SSR (=Solid State Relay) 설명 그림 42](../assets/switching-devices-42.png)

---

#### 핵심 정리

- 스위치와 릴레이는 물리적 접점으로 회로를 연결하거나 차단했습니다.
- 트랜지스터와 MOSFET은 전기 신호로 빠르게 스위칭하는 반도체 소자였습니다.
- 포토커플러는 빛을 이용해 입력과 출력을 전기적으로 절연했습니다.
- SSR은 반도체로 부하를 스위칭하므로 빠르고 수명이 길지만 발열과 누설 전류를 고려해야 합니다.
