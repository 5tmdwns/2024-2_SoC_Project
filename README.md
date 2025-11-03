<p align="center">
  <h1 align="center">64KB SRAM Memory Controller With MBIST✨</h1>
    <p align="center">
      
    </p>
</p>

## Index ⭐
 - [1. Spec](#1-spec)
   - [1-1. Main Features](#1-1-main-features)
   - [1-2. Test Items](#1-2-test-items)
   - [1-3. Corner](#1-3-corner)
   - [1-4. Top Module Name & Essential Ports](#1-4-top-module-name--essential-ports)
 - [2. System Architecture](#2-system-architecture)
 - [3. RTL](#3-rtl)
   - [3-1. BISR](#3-1-bisr)
 - [4. PnR](#4-pnr)
    - [4-1. BISR](#4-1-bisr)
 - [5. Result](#5-result)

## 1. Spec
&nbsp;공정이 가장 먼저 Fail나는 Point가 SRAM. <br/>
Data가 가는 도중에 Error가 나는거까지 고쳐서 가져오는 ECC(Error Correction Code)까지 기본 소양임. <br/>
ECC까지는 너무 어려우니까 간단한 BIST정도로 프로젝트 진행. <br/>

### 1-1. Main Features
- **Port & Top module names should be kept!**
- **SRAM Macro (Free)**
- **Address : 16bit (0x0000 ~ 0xFFFF)**
- **Data : 8bit (1Byte)**
- **Random Pattern Generator**
  - **Data : $x^4+x^3+1$**
  - **Addr : $x^(16)+x^(14)+x^(13)+x^(11)+1$**
- **Bist Sequences**
  - March : Addr. increased based on counter, Data toggle (previous 00, prenent FF, next 00, ...)
    - 메모리는 Row가 있고 Column이 있는데, 복잡한거 다 필요 없고 Addr을 Counter로 증가시키면서 Test 하는데, Data Pattern이 처음에 00이면 두 번째는 FF, 다음은 00. (Data Toggle)
  - Random : Addr. & Data changed by LFSR
    - LFSR을 쓰면 Data가 Randomtic하게 변함. LFSR엔진을 써서 Memory Access를 Random하게 Access하고, Data도 Random하게 생성.
- **Optional**
  - BISR (Built-In-Self_Repair) 5% Fix
    - Memory를 Redun으로 다 넣음. 64KB 이외에 추가적인 Memory 더 넣고 Fail이 뜬 Addr에 한해서 Redun으로 주소를 바꿔주는 역할.
      - 예) 주소가 FABCD에 해당하는 Addr의 1Byte가 Test해서 Fail이 남. -> Additional Redun에 추가를 해서 거기를 가르치게 하고 거기를 썼다가 지웠다가 함.

### 1-2. Test Items
- **(24pt) : Normal read/write Operation (1KB random read/write) time (nCycle*TCK + Absolute Delay!)**
  - Full Write하고 Full Read해서 Pass가 나고 Fail이 나는지 Check!
  - 약 1KB정도 되는 Data Addr에다가 Data 읽고 쓰고 Random으로 했을 때, 가장 빨리 수행되는 속도.
  - Absolute Delay : 만약에 F/F Out이라고 하면, Clock이 그 F/F에 도달하는 데 Delay를 먹음. 그 뒤에 Logic이나 Buffer가 있으면, 실제로 n번째 TCK에서 Clock Edge가 들어가도 Data는 그 Delay만큼 맞고 나옴. 이런 Delay까지 고려했을 때, 최종 Finish가 언제 끝나는지 Check!
- **(24pt) : Area**
  - Area는 Floorplan 잡은 걸로 Check! (Core, Utilization 신경 X)
- **(12pt) : Power**
  - Power는 Scenario Base로 Test가 보통 Tool이 따로 있음. DC나 Fusion에서 진행이 되면 Scenario Base로 Test. 아니면, Leakage나 그런 걸로 Check!
  - 살짝 Optional 느낌. Static Power는 면적을 얼마나 쓰느냐에 걸리기 때문.
- **(12pt) : Bist Operation**
  - BIST Operation은 Self로 Testbench 제작해서 어떤 식으로 검증이 됐는지 Presentation에서 보여주면 됨.
  - Test Methods for BIST Operations : Coverage 어느정도 나왔다 알려주면 좋음.
- **if the sign-off does not pass (DRC, LVS reports, STA reports), 50% points of each items**
  - PnR : Sign-off Pass 안나면 등수 Ranking으로 안 들어감. Pass 안나면 그냥 꼴찌😭
- **Presentation**
  - time < 10 min (5pt)
  - System Architectures (10pt)
  - Tips for Speed improvements (10pt)
  - Test Methods for BIST operations (10pt)
  - How to implement optional items (BISR) (up to 10pt)
  - Estimation sheets (10pt/5pt)
    - 평가할 때 자세히 평가하기.

### 1-3. Corner
- **32nm : 1.16V/FF/-40℃ && 1.16V/FF/125℃ && 0.95V/SS/-40℃ && 0.95V/SS/125℃ (ndm supported)**
- **14nm : 0.88V/FF/-40℃ && 0.88V/FF/125℃ && 0.72V/SS/-40℃ && 0.72V/SS/125℃ (no ndm)**

&nbsp;14nm : FinFET.db (ndm부터 막힘) <br/>
14nm는 시간많은 사람들이 도전해보는 정도? <br/>
14nm로 가면 Cell Size가 1/2로 줄음 -> Road Cap이 꽤 많이 줄음 -> Power가 더 적게 먹음 -> 면적이 1/4토막 날 것 같지만, 그렇게까지 작아지지 않음. <br/>
그 이유는, Corner에서 면적 Condition을 잡고 있는지, Routing에서 면적 Condition을 잡고 있는지를 빨리 파악해야지 뭐를 줄일지 알 수 있음. <br/>
아마 Routing일 확률이 높음. <br/>

### 1-4. Top Module Name & Essential Ports

``` verilog
module MEMCTRL(/*AUTOARG*/
                // Outputs
                ODATA, BIST_PASS,
                // Inputs
                ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB, BIST_EN, BISR_EN, BIST_MODE
                );
    input [15:0] ADDR;
    input CE;
    input CLK;
    input CSB;
    input [7:0] IDATA;
    input OEB;
    input RSTN;
    input WEB;
    input BIST_EN;
    input BISR_EN;
    input [2:0] BIST_MODE; // [2] binary mode [1] gray mode [0] LFSR mode
    output [7:0] ODATA;
    output BIST_PASS;
//...
endmodule
```
- BIST_PASS : BISR을 쓸 거 아니면 실시간으로 Addr을 기록할 필요가 없음. Pass가 났는지 Fail이 났는지는 다음과 같이 표현. (P = 0, F = 1)
- CE : Select 된 친구에 한해서, Enable이 들어오면 Clock처럼 사용이 됨.
