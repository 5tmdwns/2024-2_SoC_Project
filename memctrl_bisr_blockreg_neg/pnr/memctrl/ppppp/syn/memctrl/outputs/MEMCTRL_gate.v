/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Nov 21 09:38:16 2024
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


module SRAM2KB ( ODATA, MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA
 );
  output [7:0] ODATA;
  input [8:0] MEM_ADDR;
  input [3:0] MEM_OEB;
  input [3:0] MEM_CSB;
  input [7:0] MEM_IDATA;
  input MEM_CE, MEM_WEB;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [31:0] TMP_ODATA;

  SRAM1RW512x8 \genblk1[0].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[7:0]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[0]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[0]) );
  SRAM1RW512x8 \genblk1[1].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[15:8]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[1]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[1]) );
  SRAM1RW512x8 \genblk1[2].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[23:16]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[2]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[2]) );
  SRAM1RW512x8 \genblk1[3].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[31:24]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[3]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[3]) );
  INVX0_HVT U1 ( .A(MEM_OEB[3]), .Y(n16) );
  INVX0_HVT U2 ( .A(MEM_OEB[2]), .Y(n15) );
  AO22X1_HVT U3 ( .A1(TMP_ODATA[24]), .A2(n16), .A3(TMP_ODATA[16]), .A4(n15), 
        .Y(n2) );
  INVX0_HVT U4 ( .A(MEM_OEB[1]), .Y(n18) );
  INVX0_HVT U5 ( .A(MEM_OEB[0]), .Y(n17) );
  AO22X1_HVT U6 ( .A1(TMP_ODATA[8]), .A2(n18), .A3(TMP_ODATA[0]), .A4(n17), 
        .Y(n1) );
  OR2X1_HVT U7 ( .A1(n2), .A2(n1), .Y(ODATA[0]) );
  AO22X1_HVT U8 ( .A1(TMP_ODATA[25]), .A2(n16), .A3(TMP_ODATA[17]), .A4(n15), 
        .Y(n4) );
  AO22X1_HVT U9 ( .A1(TMP_ODATA[9]), .A2(n18), .A3(TMP_ODATA[1]), .A4(n17), 
        .Y(n3) );
  OR2X1_HVT U10 ( .A1(n4), .A2(n3), .Y(ODATA[1]) );
  AO22X1_HVT U11 ( .A1(TMP_ODATA[26]), .A2(n16), .A3(TMP_ODATA[18]), .A4(n15), 
        .Y(n6) );
  AO22X1_HVT U12 ( .A1(TMP_ODATA[10]), .A2(n18), .A3(TMP_ODATA[2]), .A4(n17), 
        .Y(n5) );
  OR2X1_HVT U13 ( .A1(n6), .A2(n5), .Y(ODATA[2]) );
  AO22X1_HVT U14 ( .A1(TMP_ODATA[27]), .A2(n16), .A3(TMP_ODATA[19]), .A4(n15), 
        .Y(n8) );
  AO22X1_HVT U15 ( .A1(TMP_ODATA[11]), .A2(n18), .A3(TMP_ODATA[3]), .A4(n17), 
        .Y(n7) );
  OR2X1_HVT U16 ( .A1(n8), .A2(n7), .Y(ODATA[3]) );
  AO22X1_HVT U17 ( .A1(TMP_ODATA[28]), .A2(n16), .A3(TMP_ODATA[20]), .A4(n15), 
        .Y(n10) );
  AO22X1_HVT U18 ( .A1(TMP_ODATA[12]), .A2(n18), .A3(TMP_ODATA[4]), .A4(n17), 
        .Y(n9) );
  OR2X1_HVT U19 ( .A1(n10), .A2(n9), .Y(ODATA[4]) );
  AO22X1_HVT U20 ( .A1(TMP_ODATA[29]), .A2(n16), .A3(TMP_ODATA[21]), .A4(n15), 
        .Y(n12) );
  AO22X1_HVT U21 ( .A1(TMP_ODATA[13]), .A2(n18), .A3(TMP_ODATA[5]), .A4(n17), 
        .Y(n11) );
  OR2X1_HVT U22 ( .A1(n12), .A2(n11), .Y(ODATA[5]) );
  AO22X1_HVT U23 ( .A1(TMP_ODATA[30]), .A2(n16), .A3(TMP_ODATA[22]), .A4(n15), 
        .Y(n14) );
  AO22X1_HVT U24 ( .A1(TMP_ODATA[14]), .A2(n18), .A3(TMP_ODATA[6]), .A4(n17), 
        .Y(n13) );
  OR2X1_HVT U25 ( .A1(n14), .A2(n13), .Y(ODATA[6]) );
  AO22X1_HVT U26 ( .A1(TMP_ODATA[31]), .A2(n16), .A3(TMP_ODATA[23]), .A4(n15), 
        .Y(n20) );
  AO22X1_HVT U27 ( .A1(TMP_ODATA[15]), .A2(n18), .A3(TMP_ODATA[7]), .A4(n17), 
        .Y(n19) );
  OR2X1_HVT U28 ( .A1(n20), .A2(n19), .Y(ODATA[7]) );
endmodule


module MEMCTRL ( ODATA, ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB );
  output [7:0] ODATA;
  input [10:0] ADDR;
  input [7:0] IDATA;
  input CE, CLK, CSB, OEB, RSTN, WEB;
  wire   MEM_CE, MEM_WEB;
  wire   [8:0] MEM_ADDR;
  wire   [3:0] MEM_OEB;
  wire   [3:0] MEM_CSB;
  wire   [7:0] MEM_IDATA;

  FSM UFSM ( .MEM_ADDR(MEM_ADDR), .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), 
        .MEM_OEB(MEM_OEB), .MEM_CSB(MEM_CSB), .MEM_IDATA(MEM_IDATA), .CLK(CLK), 
        .RSTN(RSTN), .ADDR(ADDR), .CE(CE), .CSB(CSB), .WEB(WEB), .OEB(OEB), 
        .IDATA(IDATA) );
  SRAM2KB USRAM ( .ODATA(ODATA), .MEM_ADDR(MEM_ADDR), .MEM_CE(MEM_CE), 
        .MEM_WEB(MEM_WEB), .MEM_OEB(MEM_OEB), .MEM_CSB(MEM_CSB), .MEM_IDATA(
        MEM_IDATA) );
endmodule

