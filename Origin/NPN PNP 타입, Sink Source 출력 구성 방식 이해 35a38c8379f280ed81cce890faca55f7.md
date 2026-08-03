# NPN/PNP 타입, Sink/Source 출력 구성 방식 이해

## NPN 트랜지스터

![image.png](%EC%8A%A4%EC%9C%84%EC%B9%98,%20%ED%8A%B8%EB%9E%9C%EC%A7%80%EC%8A%A4%ED%84%B0,%20%EB%A6%B4%EB%A0%88%EC%9D%B4,%20SSR,%20%ED%8F%AC%ED%86%A0%EC%BB%A4%ED%94%8C%EB%9F%AC,%20MC,%20MOSFET%EC%9D%98%20%EB%8F%99%EC%9E%91%20%EC%9B%90%EB%A6%AC%EC%99%80%20%EC%A0%81%EC%9A%A9/image%2026.png)

Open Collector Type

## PNP 트랜지스터

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image.png)

Open Collector Type

## NPN Type Sensor

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%201.png)

## PNP Type Sensor

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%202.png)

## Source Type Input

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%203.png)

## Sink Type Input

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%204.png)

## PLC - Source Type Input Common

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%205.png)

## PLC - Sink Type Input Common

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%206.png)

## PLC - Source Type Output Common

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%207.png)

## PLC - Sink Type Output Common

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%208.png)

## Summury

- Sink Type Output - Source Type Input
- Source Type Output - Sink Type Input
- Sink Type Common - Positive
- Source Type Common - Negative

## PLC - Relay Type Output

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%209.png)

## 센서 도면 해석

신호선

- NPN 출력
- PNP 출력

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2010.png)

동작 모드

- Light ON
- Dark ON

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2011.png)

## 투과형 (Dark On / Light ON)

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2012.png)

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2013.png)

## 반사형 (Dark On / Light ON)

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2014.png)

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2015.png)

## 출력

갈색 (Brown)

- P24

청색 (Blue)

- N24

흑색 (Black)

- Signal
- NPN : Signal -
- PNP : Signal +

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2016.png)

## PLC Module

입력 모듈

출력 모듈

입출력 혼합 모듈

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2017.png)

## 입력 모듈 사양

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2018.png)

## 입력 모듈 외부 결선도

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2019.png)

## 센서 연결

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2020.png)

## 입력 연결

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2021.png)

## 출력 모듈 사양

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2022.png)

## 출력모듈 외부 결선도

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2023.png)

## 출력 연결

![image.png](NPN%20PNP%20%ED%83%80%EC%9E%85,%20Sink%20Source%20%EC%B6%9C%EB%A0%A5%20%EA%B5%AC%EC%84%B1%20%EB%B0%A9%EC%8B%9D%20%EC%9D%B4%ED%95%B4/image%2024.png)