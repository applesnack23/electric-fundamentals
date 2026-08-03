# AC, DC, BLDC, 스테핑 모터, 서보 모터의 펄스 제어 방식

## AC 모터 제어 방식

AC 모터는 주파수를 변경해서 모터 속도를 조절한다.

$$
N_s=120f/P
$$

- f = 주파수
- P = 극수

#### V/F (=Voltage / Frequency)

*저렴한 인버터에서 주력으로 사용*

- AC → DC → PWM → AC
- 자세한 내용은 전력 변환기 내용 참조

단순 전압, 속도 변경

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image.png)

#### FOC (=Field Oriented Control)

*고가의 인버터 혹은 서보모터에서 주력으로 사용*

주파수 변경 → 속도 변경

전압 변경 → 토크 변경

V/F 제어는 토크 제어 불가능

홀센서를 사용해 현재 위치와 속도를 감시하면서 전압과 주파수를 정밀하게 제어

#### V/F vs FOC

V/F

실시간 제어 기능 없음

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image%201.png)

FOC

Feedback 을 기반으로 실시간 제어 포함

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image%202.png)

## DC 모터 제어 방식

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image%203.png)

DC 모터는 가장 직관적이다.

전압 ↑ → 속도 ↑

$V = E + IR$

- V = 공급전압
- E = 역기전력
- I = 전류

#### PWM (=Pulse Width Modulation)

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image%204.png)

duty 를 변화시켜 원하는 전압으로 변환할 수 있다.

실제 전압을 만들어 내는 과정은 전자실습 (마이크로 컨트롤러) 과정에서 진행한다.

## BLDC 모터

BLDC(=Brushless DC) 모터는 이름에서 알 수 있듯이 브러시가 없는 DC 모터이다.

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image%205.png)

#### DC vs BLDC

| DC 모터 | BLDC 모터 |
| --- | --- |
| 수명이 짧다 | 영구적인 수명 |
| 내구성이 약하다 | 내구성이 강하다 |
| 서서히 약해짐 | 파워가 강하고 변동이 없다 |
| 소음이 크다 | 소음이 작다 |
| 제어가 용이하다 | 제어가 용이하다 |

## 스테핑 모터

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image%206.png)

## 모터 비교

|  | AC | DC | BLDC | 스테핑 |
| --- | --- | --- | --- | --- |
| 장점 | 특특한 내구성
저렴한 가격
구조가 단순해 고장률 낮음
장시간 연속 운전에 강함
고 전력, 고 토크 구동 가능 | 속도 제어가 간단
초기 토크 강함
제어 회로 단순
교육용, 소형 로봇에 사용 | 브러시가 없어 수명이 길다
고효율 저 소음, 고속 구동
속도, 위치 제어에 유리
소형 ~ 대형 범위 넓음 | 정밀 위치 제어 가능
오픈루프 제어 가능
저속에서 높은 토크
구조 단순, 가격 저렴 |
| 단점 | 속도 제어가 부정확
저속에서 토크 저하
위치제어 불가
속도제어시 인버터 필요 | 브러시 마모
고속, 장시간 운전에 불리 | 드라이버 필수
제어 알고리즘 복잡
가격 비쌈 | 고속에서 토크 급감
진동, 소음 크고 발열
과 부하시 탈조
효율 낮음 |
| 사용 | 컨베이어, 엘리베이터
펌프, 공조기
자동화 장비 | 교육용 로봇
자동차 부품 (와이퍼 등)
소형 가전 (전동 칫솔 등)
저가형 펌프 | 전기차, 전기 스쿠터
산업용 로봇, AGV, 드론
고성능 가전 | 소형 CNC
3D 프린터
프린터, 복합기
저토크 자동화 장비 |

## 서보모터

서보모터는 DC모터, AC모터, 스테핑 모터 등에 엔코더를 달아 정밀제어를 할 때 사용된다.

서보모터는 모터 종류가 아니라 모터에 엔코더와 컨트롤러를 장착해 모터의 상태를 모니터링 하면서 정밀하게 제어하는 기능을 이야기 한다.

서보모터는 반드시 엔코더와 모터 드라이브를 포함해야 한다.

DC, AC, 스테핑 어느것이든 사용할 수 있지만, 산업에서는 주로 AC 모터를 주력으로 사용하는데 그 이유는 가격이 저렴하며 토크가 좋아 가성비가 매우 좋다.

BLDC 는 토크가 좋지만 가격이 비싸기 때문에 소형화가 필요한 정밀 로봇에 주로 사용이 되며, 당연히 이 때에도 BLDC 에 엔코더를 사용해 서보모터로 사용한다.

#### 제어기

![image.png](AC,%20DC,%20BLDC,%20%EC%8A%A4%ED%85%8C%ED%95%91%20%EB%AA%A8%ED%84%B0,%20%EC%84%9C%EB%B3%B4%20%EB%AA%A8%ED%84%B0%EC%9D%98%20%ED%8E%84%EC%8A%A4%20%EC%A0%9C%EC%96%B4%20%EB%B0%A9%EC%8B%9D/image%207.png)

error 를 줄이는 것이 목표

Error 를 확인해서 다음 Time 의 출력 값을 보정해야 한다.

다음 Time = 응답시간 (Response Time)

$$
MV(t)=K_p e(t)+K_i ∫_0^te(t)dt+K_d  de/dt
$$

MV(t) : 출력, 𝐾_𝑝 : 비례 상수, 𝐾_𝑖 : 적분 상수, 𝐾_𝑑 : 미분 상수

#### PID Controller

```cpp
double integral = 0, derivative = 0;
double PID_Control(double setpoint, double process_value)
{
    // 1. 오차 계산
    error = setpoint - process_value;			// 작은 Error 에 대한 대응 불가능

    // 2. 적분항 계산
    integral += error * Ts;				 // 누적된 에러에 대해 보상할 수 있다.

    // 3. 미분항 계산
    derivative = (error - prev_error) / Ts;			 // 외란에 빠르게 대응할 수 있다.

    // 4. PID 합산
    MV = (Kp * error) + (Ki * integral) + (Kd * derivative);

    // 5. 현재 오차 저장
    prev_error = error;
    return MV;
}
```

P 제어기

- $MV(t) = K_pe(t)$
- Error 에 대한 출력 변화를 증가

I 제어기

- $MV(t)=K_i ∫_0^te(t)dt$
- 적분(과거의 Error 를 반영)해 출력 변화를 증가 : 정상상태 오차 감소

D제어기

- $MV(t)=K_p e(t)+K_i ∫_0^te(t)dt+K_d  de/dt$
- 미분(현재의 Error 를 증폭)해 출력 변화를 증가 : 순간 외란에 대응