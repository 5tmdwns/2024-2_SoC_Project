<p align="center">
  <h1 align="center">64KB SRAM Memory Controller With MBIST✨</h1>
</p>

## Index ⭐
 - [1. Spec](#1-spec)
   - [1-1. Main Features](#1-1-main-features)
   - [1-2. Test Items](#1-2-test-items)
   - [1-3. Corner](#1-3-corner)
   - [1-4. Top Module Name & Essential Ports](#1-4-top-module-name--essential-ports)
 - [2. System Architecture](#2-system-architecture)
 - [3. RTL](#3-rtl)
   - [3-1. BIST](#3-1-bist)
   - [3-2. BISR](#3-2-bisr)
 - [4. PnR](#4-pnr)
    - [4-1. BIST](#4-1-bist)
    - [4-2. BISR](#4-2-bisr)
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
  - **Addr : $x^{16}+x^{14}+x^{13}+x^{11}+1$**
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
  - Normal Operation Interleaving 혹은 Pipeline 많이 써보라는 차원에서 Address MSB 2비트는 반드시 00 -> 01 -> 10 -> 11로 Access해서 Test!
  - Testbench는 조별로 내부 상황이 다 다를거라, 제작한 Testbench를 받고 Coverage는 따로 확인. Fail Cell 만들려면 Forcing 사용. 잘 걸고 Release 하면서 Test 해야 함!
  - Testbench는 Python Code인데, run 코드를 실행파일로 바꾸고 실행. (list.f에 TB_MEMCTRL.v랑 있어야 함.)
  - postsim 돌리면, sdf_annotate TB_MEMCTRL.v에 넣어주고, Standard Cell과 Sram Macro를 list.f에 추가!
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
  - PnR : Metal Fill은 Waive하고, Filler Cell Insertion은 꼭 해야함!
  - SDC : input/output delay는 1ns && load는 100fF으로 Fix!
  - SDC : clock latency 자유 && uncertainty clock은 setup 0.3ns, hold 0.1ns!
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

&nbsp;14nm : `FinFET.db` (ndm부터 막힘) <br/>
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

## 2. System Architecture
<table align="center">
  <tr>
    <td align="center" width="50%"><img width="100%" alt="BIST System Architecture" src="https://github.com/user-attachments/assets/d1871d66-649a-4d8e-8906-ee45cbfecacf" /></td>
    <td align="center" width="50%"><img width="100%" alt="BISR System Architecture" src="https://github.com/user-attachments/assets/883db5cf-25b9-45e0-b1dd-b42b0716d8ce" /></td>
  </tr>
  <tr>
    <td align="center">BIST System Architecture</td>
    <td align="center">BISR System Architecture</td>
  </tr>
</table>

## 3. RTL
### 3-1. BIST
``` verilog
//...
    localparam IDLE = 5'b00001;
    localparam WRITE1 = 5'b00010;
    localparam WRITE2 = 5'b00100;
    localparam READ1 = 5'b01000;
    localparam READ2 = 5'b1000;

    reg [4:0] state, next_state;

    always @(posedge CLK or negedge RSTN) begin
        if (!RSTN) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end

    always @(*) begin
        case (state)
            IDLE : next_state = (BIST_EN) ? WRITE1 : IDLE;
            WRITE1 : next_state = WRITE2;
            WRITE2 : next_state = READ1;
            READ1 : next_state = READ2;
            READ2 : next_state = (BIST_EN) ? WRITE1 : IDLE;
            default : next_state = IDLE;
        endcase
    end
//...
```

#### BIST Operation
- FSM 구조의 BIST 모듈 형식.
- Finite State Machine으로 1WR 후, 1RD하여 값을 비교하여 BIST_PASS를 띄움.

#### BIST Operation gate.v
<table align="center">
  <tr>
    <td align="center"><img width="100%" alt="BIST Mode(Normal)" src="https://github.com/user-attachments/assets/13c5d0af-3a79-4355-89a1-f434f3cb43c6" /></td>
    <td align="center"><img width="100%" alt="BIST Mode(LFSR)" src="https://github.com/user-attachments/assets/b1a8ee5c-b2b5-45d0-9543-d2a14ffe33df" /></td>
  </tr>
  <tr>
    <td align="center"><strong>BIST Mode : Normal</strong></td>
    <td align="center"><strong>BIST Mode : LFSR</strong></td>
  </tr>
  <tr>
    <td align="center"><img width="100%" alt="BIST mode(Graycounter)" src="https://github.com/user-attachments/assets/ff169575-13cb-4432-8de8-73765bdd7fab" /></td>
    <td align="center"><img width="100%" alt="BIST Mode(Binarycounter)" src="https://github.com/user-attachments/assets/2891d639-b920-4a5f-b4dd-d3315614e115" /></td>
  </tr>
  <tr>
    <td align="center"><strong>BIST Mode : Graycounter</strong></td>
    <td align="center"><strong>BIST Mode : Binarycounter</strong></td>
  </tr>
</table>

### 3-2. BISR
#### BISR Operation Mechanism
1. Register 최적화를 위한 Block 단위 Macro Cell Mapping (128).
2. BIST Mode에서 일괄 검사 시, `BIST_PASS == 1`인 주소의 구간 Block이 `FAULT_ADDR` Register에 `VALID == 1`로 저장.
3. 이후, Normal Operation에서 고장난 Macro Cell 주소의 Block 단위가 `VALID == 1`이므로, `FAULT_ADDR`의 이전 `VALID == 1`의 개수를 세어, 해당하는 개수의 여분 Macro Cell의 순서로 Mapping.

#### BISR Operation gate.v
<table align="center">
  <tr>
    <td align="center"><img width="100%" alt="BISR gate.v 1" src="https://github.com/user-attachments/assets/471be02d-3d5c-4e1c-a196-733ee9b62b32" /></td>
    <td align="center"><img width="100%" alt="BISR gate.v 2" src="https://github.com/user-attachments/assets/8fc582c3-6009-453a-b135-ecb9ff9cc4a3" /></td>
  </tr>
  <tr>
    <td align="center"><img width="100%" alt="BISR gate.v 3" src="https://github.com/user-attachments/assets/a9d1b2fb-7183-46e2-a64a-e3b19b7399ed" /></td>
    <td align="center"><img width="100%" alt="BISR gate.v 4" src="https://github.com/user-attachments/assets/39fe773d-48e7-462b-843c-b0d2dbd19354" /></td>
  </tr>
</table>

## 4. PnR
### 4-1. BIST
#### Floorplan
<table>
  <tr>
    <td align="center" width="60%">
      <img width="70%" alt="Macro Layout" src="https://github.com/user-attachments/assets/a57a7c67-cc94-4ec5-9301-65d456124836" />
    </td>
    <td align="center" width="40%">
      <strong>Place Macro / Soft Blockage / Create Terminals</strong><br/><br/>
      <strong>Core 면적 : 1560 x 1630 </strong><br/>
      <strong>SRAM 16개씩 4등분</strong><br/><br/>
      <ul>
        <li>균일한 SRAM Acess를 위해 MEMCTRL Cell을 중앙으로 배치.</li>
        <li>각 4분면에 존재하는 SRAM의 Port가 중앙을 바라보도록 Rotation.</li>
        <li>Terminal을 Controller와 인접한 위치로 배치.</li>
      </ul>
    </td>
  </tr>
</table>

<p align="center">
  <img width="49%" alt="Macro 1/4 Layout" src="https://github.com/user-attachments/assets/483edbbc-91a1-4a8d-b251-6dad85d5f019" />
  <img width="49%" alt="Macro Cell Layout Code" src="https://github.com/user-attachments/assets/675629dc-2d61-43a6-9773-bb3641071914" />
</p>

#### Placement & Remove Congestion

<table align="center">
  <tr>
    <td align="center"><img width="100%" alt="Congetsion Map Before" src="https://github.com/user-attachments/assets/6b962672-a91e-406f-bbf0-7a63aab87134" /></td>
    <td align="center"><img width="100%" alt="report_congestion Before" src="https://github.com/user-attachments/assets/930cc5ce-725d-48a0-b870-c0d59e3bbe0d" /></td>
  </tr>
  <tr>
    <td align="center"><strong>Congestion Map before</strong></td>
    <td align="center"><strong>report_congestion Before</strong></td>
  </tr>
</table>

``` tcl
create_placement_blockage -partial
```

<table align="center">
  <tr>
    <td align="center"><img width="100%" alt="Congestion Map After" src="https://github.com/user-attachments/assets/7f22706f-313f-44e1-a67e-734d3857e612" /></td>
    <td align="center"><img width="100%" alt="report_congestion After" src="https://github.com/user-attachments/assets/92c5d3b4-5170-4791-892d-7d3200df74c3" /></td>
  </tr>
  <tr>
    <td align="center"><strong>Congestion Map After</strong></td>
    <td align="center"><strong>report_congestion After</strong></td>
  </tr>
</table>

**Congestion map의 사진 & Overflow 갯수 전후 비교!!**

### 4-2. BISR
#### BISR Remove Congestion
- Partial Blockage의 퍼센트를 조정해가면서 Route.
<table>
  <tr>
    <td align="center" width="40%">
      <img width="100%" alt="BISR Macro Layout" src="https://github.com/user-attachments/assets/4977ef5c-2257-467e-b510-e5e8713a332f" />
    </td>
    <td align="center" width="60%">
      <strong>BISR Redundant SRAM 128 x 8 : 25개</strong><br/><br/>
      
``` tcl
create_placement_blockage -type partial - blocked_percentage 20 -boundary $STDBND
```
        
  </td>
  </tr>
</table>

<table>
  <tr>
    <td align="center" width="33%"><img width="100%" alt="BISR Congestion Map Before 20%" src="https://github.com/user-attachments/assets/52d4d942-45c8-442c-bf9a-ac011c82ca30" /></td>
    <td align="center" width="33%"><img width="100%" alt="BISR Congestion Map After 20%" src="https://github.com/user-attachments/assets/7159da3a-1b47-4cee-b607-8d97477768af" /></td>
    <td align="center" width="33%"><img width="100%" alt="Map Data of Global Route Congestion Option" src="https://github.com/user-attachments/assets/d03f4daf-d882-42df-84c2-fb41e08cf5fe" /></td>
  </tr>
  <tr>
    <td align="center" colspan="3">
      
``` tcl
create_placement_blockage -type partial - blocked_percentage 20 -boundary $STDBND
```
      
  </td>
  </tr>
</table>

<table>
  <tr>
    <td align="center" width="49%"><img width="100%" alt="BISR Congestion Map Before 60%" src="https://github.com/user-attachments/assets/64018df6-2922-4084-af36-eab3917e6a9f" /></td>
    <td align="center" width="49%"><img width="100%" alt="BISR Congestion Map After 60%" src="https://github.com/user-attachments/assets/caa9277d-b790-402b-9012-2a41e29f8703" />
</td>
  </tr>
  <tr>
    <td align="center" colspan="3">

``` tcl
create_placement_blockage -type partial - blocked_percentage 60 -boundary $STDBND
```
    
  </td>
  </tr>
</table>

## 5. Result
### Design Verification - DRC
<p align="center">
  <img width="100%" alt="DRC Sign-off Pass" src="https://github.com/user-attachments/assets/14444f0f-e320-4d5c-98d5-480eb1e73401" />
</p>

### Design Verification - Timing
<p align="center">
  <img width="100%" alt="Primetime Sign-off Pass" src="https://github.com/user-attachments/assets/e90ee423-8ac1-4c40-adc8-959bed77bcc5" />
</p>

### Post Simulation
<table>
  <tr>
    <td align="center" width="55%">
      <img width="100%" alt="Testbench Setting Value" src="https://github.com/user-attachments/assets/4f30689d-7b42-43f8-ba9e-69183540cb8f" />
    </td>
    <td align="center" rowspan="2">
      <img width="100%" alt="Post Simulation Log Result" src="https://github.com/user-attachments/assets/cbaec296-b749-4473-b15c-1c198772cead" />
    </td>
  </tr>
  <tr>
    <td>
      <strong>Post Simulation Normal Operation</strong><br/><br/>
      <ul>
        <li>위와 같은 설정을 통해 TCK=4ns에서 Normal Operation ALL PASS!!</li>
      </ul>
    </td>
  </tr>
</table>

<p align="center">
  <img width="100%" alt="Post Simulation Waveform Result" src="https://github.com/user-attachments/assets/1d45e7e9-f3c9-4fa3-8b82-58e8ee810779" />
</p>

### Area
<table>
  <tr>
    <td align="center" width="40%"><img width="100%" alt="Area Layout" src="https://github.com/user-attachments/assets/188c8516-ed22-4474-a5a3-66f5845ec733" /></td>
    <td align="center" width="60%"><img width="100%" alt="Area Report" src="https://github.com/user-attachments/assets/b8787908-fe67-4b72-93d2-7d280c35ab16" /></td>
  </tr>
</table>
