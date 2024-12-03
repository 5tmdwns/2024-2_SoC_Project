/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Nov 11 06:33:59 2024
/////////////////////////////////////////////////////////////


module FSM ( MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA, CLK, RSTN, 
        ADDR, CE, CSB, WEB, OEB, IDATA );
  output [8:0] MEM_ADDR;
  output [3:0] MEM_OEB;
  output [3:0] MEM_CSB;
  output [7:0] MEM_IDATA;
  input [10:0] ADDR;
  input [7:0] IDATA;
  input CLK, RSTN, CE, CSB, WEB, OEB;
  output MEM_CE, MEM_WEB;
  wire   CLKB, N8, N9, N10, N11, N20, N21, N22, N23, PREV_CE, n1, n2, n3, n4;
  tri   [8:0] MEM_ADDR;
  tri   MEM_CE;
  tri   MEM_WEB;
  tri   [3:0] MEM_OEB;
  tri   [3:0] MEM_CSB;
  tri   [7:0] MEM_IDATA;

  DFFARX1_HVT \MEM_IDATA_reg[7]  ( .D(IDATA[7]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[7]) );
  DFFARX1_HVT \MEM_IDATA_reg[6]  ( .D(IDATA[6]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[6]) );
  DFFARX1_HVT \MEM_IDATA_reg[5]  ( .D(IDATA[5]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[5]) );
  DFFARX1_HVT \MEM_IDATA_reg[4]  ( .D(IDATA[4]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[4]) );
  DFFARX1_HVT \MEM_IDATA_reg[3]  ( .D(IDATA[3]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[3]) );
  DFFARX1_HVT \MEM_IDATA_reg[2]  ( .D(IDATA[2]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[2]) );
  DFFARX1_HVT \MEM_IDATA_reg[1]  ( .D(IDATA[1]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[1]) );
  DFFARX1_HVT \MEM_CSB_reg[3]  ( .D(N23), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_CSB[3]) );
  DFFARX1_HVT \MEM_CSB_reg[2]  ( .D(N22), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_CSB[2]) );
  DFFARX1_HVT \MEM_CSB_reg[1]  ( .D(N21), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_CSB[1]) );
  DFFARX1_HVT \MEM_CSB_reg[0]  ( .D(N20), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_CSB[0]) );
  DFFARX1_HVT \MEM_ADDR_reg[8]  ( .D(ADDR[8]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[8]) );
  DFFARX1_HVT \MEM_ADDR_reg[7]  ( .D(ADDR[7]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[7]) );
  DFFARX1_HVT \MEM_ADDR_reg[6]  ( .D(ADDR[6]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[6]) );
  DFFARX1_HVT \MEM_ADDR_reg[5]  ( .D(ADDR[5]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[5]) );
  DFFARX1_HVT \MEM_ADDR_reg[4]  ( .D(ADDR[4]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[4]) );
  DFFARX1_HVT \MEM_ADDR_reg[3]  ( .D(ADDR[3]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[3]) );
  DFFARX1_HVT \MEM_ADDR_reg[2]  ( .D(ADDR[2]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[2]) );
  DFFARX1_HVT \MEM_ADDR_reg[1]  ( .D(ADDR[1]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[1]) );
  DFFARX1_HVT \MEM_ADDR_reg[0]  ( .D(ADDR[0]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[0]) );
  DFFARX1_HVT PREV_CE_reg ( .D(CE), .CLK(CLKB), .RSTB(RSTN), .Q(PREV_CE) );
  DFFARX1_HVT MEM_CE_reg ( .D(PREV_CE), .CLK(CLKB), .RSTB(RSTN), .Q(MEM_CE) );
  DFFASX1_HVT \MEM_IDATA_reg[0]  ( .D(IDATA[0]), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_IDATA[0]) );
  DFFASX1_HVT \MEM_OEB_reg[3]  ( .D(N11), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[3]) );
  DFFASX1_HVT \MEM_OEB_reg[2]  ( .D(N10), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[2]) );
  DFFASX1_HVT \MEM_OEB_reg[1]  ( .D(N9), .CLK(CLK), .SETB(RSTN), .Q(MEM_OEB[1]) );
  DFFASX1_HVT \MEM_OEB_reg[0]  ( .D(N8), .CLK(CLK), .SETB(RSTN), .Q(MEM_OEB[0]) );
  DFFASX1_HVT MEM_WEB_reg ( .D(WEB), .CLK(CLK), .SETB(RSTN), .Q(MEM_WEB) );
  INVX0_HVT I_1 ( .A(CLK), .Y(CLKB) );
  INVX0_HVT U3 ( .A(ADDR[9]), .Y(n3) );
  INVX0_HVT U4 ( .A(ADDR[10]), .Y(n2) );
  INVX0_HVT U5 ( .A(CSB), .Y(n1) );
  NAND3X0_HVT U6 ( .A1(n3), .A2(n2), .A3(n1), .Y(N20) );
  NAND3X0_HVT U7 ( .A1(ADDR[9]), .A2(n2), .A3(n1), .Y(N21) );
  NAND3X0_HVT U8 ( .A1(ADDR[10]), .A2(n3), .A3(n1), .Y(N22) );
  NAND3X0_HVT U9 ( .A1(ADDR[10]), .A2(ADDR[9]), .A3(n1), .Y(N23) );
  INVX0_HVT U10 ( .A(OEB), .Y(n4) );
  NAND3X0_HVT U11 ( .A1(n3), .A2(n2), .A3(n4), .Y(N8) );
  NAND3X0_HVT U12 ( .A1(ADDR[9]), .A2(n2), .A3(n4), .Y(N9) );
  NAND3X0_HVT U13 ( .A1(ADDR[10]), .A2(n3), .A3(n4), .Y(N10) );
  NAND3X0_HVT U14 ( .A1(ADDR[10]), .A2(ADDR[9]), .A3(n4), .Y(N11) );
endmodule


module MEMCTRL ( ODATA, ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB );
  output [7:0] ODATA;
  input [10:0] ADDR;
  input [7:0] IDATA;
  input CE, CLK, CSB, OEB, RSTN, WEB;

  tri   [7:0] ODATA;
  tri   [8:0] MEM_ADDR;
  tri   MEM_CE;
  tri   MEM_WEB;
  tri   [3:0] MEM_OEB;
  tri   [3:0] MEM_CSB;
  tri   [7:0] MEM_IDATA;

  FSM UFSM ( .MEM_ADDR(MEM_ADDR), .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), 
        .MEM_OEB(MEM_OEB), .MEM_CSB(MEM_CSB), .MEM_IDATA(MEM_IDATA), .CLK(CLK), 
        .RSTN(RSTN), .ADDR(ADDR), .CE(CE), .CSB(CSB), .WEB(WEB), .OEB(OEB), 
        .IDATA(IDATA) );
  SRAM2KB USRAM ( .ODATA(ODATA), .MEM_ADDR(MEM_ADDR), .MEM_CE(MEM_CE), 
        .MEM_WEB(MEM_WEB), .MEM_OEB(MEM_OEB), .MEM_CSB(MEM_CSB), .MEM_IDATA(
        MEM_IDATA) );
endmodule

