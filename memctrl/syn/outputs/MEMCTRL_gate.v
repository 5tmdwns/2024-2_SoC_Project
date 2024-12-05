/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Dec  3 07:06:48 2024
/////////////////////////////////////////////////////////////


module FSM ( MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA, CLK, RSTN, 
        ADDR, CE, CSB, WEB, OEB, IDATA );
  output [9:0] MEM_ADDR;
  output [63:0] MEM_OEB;
  output [63:0] MEM_CSB;
  output [7:0] MEM_IDATA;
  input [15:0] ADDR;
  input [7:0] IDATA;
  input CLK, RSTN, CE, CSB, WEB, OEB;
  output MEM_CE, MEM_WEB;
  wire   N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78,
         N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92,
         N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N193, N194, N195, N196, N197, N198, N199, N200, N201, N202,
         N203, N204, N205, N206, N207, N208, N209, N210, N211, N212, N213,
         N214, N215, N216, N217, N218, N219, N220, N221, N222, N223, N224,
         N225, N226, N227, N228, N229, N230, N231, N232, N233, N234, N235,
         N236, N237, N238, N239, N240, N241, N242, N243, N244, N245, N246,
         N247, N248, N249, N250, N251, N252, N253, N254, N255, N256, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32;

  DFFASX1_HVT MEM_WEB_reg ( .D(WEB), .CLK(CLK), .SETB(RSTN), .Q(MEM_WEB) );
  DFFASX1_HVT \MEM_CSB_reg[63]  ( .D(N193), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[63]) );
  DFFASX1_HVT \MEM_CSB_reg[62]  ( .D(N194), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[62]) );
  DFFASX1_HVT \MEM_CSB_reg[61]  ( .D(N195), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[61]) );
  DFFASX1_HVT \MEM_CSB_reg[60]  ( .D(N196), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[60]) );
  DFFASX1_HVT \MEM_CSB_reg[59]  ( .D(N197), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[59]) );
  DFFASX1_HVT \MEM_CSB_reg[58]  ( .D(N198), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[58]) );
  DFFASX1_HVT \MEM_CSB_reg[57]  ( .D(N199), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[57]) );
  DFFASX1_HVT \MEM_CSB_reg[56]  ( .D(N200), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[56]) );
  DFFASX1_HVT \MEM_CSB_reg[55]  ( .D(N201), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[55]) );
  DFFASX1_HVT \MEM_CSB_reg[54]  ( .D(N202), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[54]) );
  DFFASX1_HVT \MEM_CSB_reg[53]  ( .D(N203), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[53]) );
  DFFASX1_HVT \MEM_CSB_reg[52]  ( .D(N204), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[52]) );
  DFFASX1_HVT \MEM_CSB_reg[51]  ( .D(N205), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[51]) );
  DFFASX1_HVT \MEM_CSB_reg[50]  ( .D(N206), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[50]) );
  DFFASX1_HVT \MEM_CSB_reg[49]  ( .D(N207), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[49]) );
  DFFASX1_HVT \MEM_CSB_reg[48]  ( .D(N208), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[48]) );
  DFFASX1_HVT \MEM_CSB_reg[47]  ( .D(N209), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[47]) );
  DFFASX1_HVT \MEM_CSB_reg[46]  ( .D(N210), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[46]) );
  DFFASX1_HVT \MEM_CSB_reg[45]  ( .D(N211), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[45]) );
  DFFASX1_HVT \MEM_CSB_reg[44]  ( .D(N212), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[44]) );
  DFFASX1_HVT \MEM_CSB_reg[43]  ( .D(N213), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[43]) );
  DFFASX1_HVT \MEM_CSB_reg[42]  ( .D(N214), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[42]) );
  DFFASX1_HVT \MEM_CSB_reg[41]  ( .D(N215), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[41]) );
  DFFASX1_HVT \MEM_CSB_reg[40]  ( .D(N216), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[40]) );
  DFFASX1_HVT \MEM_CSB_reg[39]  ( .D(N217), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[39]) );
  DFFASX1_HVT \MEM_CSB_reg[38]  ( .D(N218), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[38]) );
  DFFASX1_HVT \MEM_CSB_reg[37]  ( .D(N219), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[37]) );
  DFFASX1_HVT \MEM_CSB_reg[36]  ( .D(N220), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[36]) );
  DFFASX1_HVT \MEM_CSB_reg[35]  ( .D(N221), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[35]) );
  DFFASX1_HVT \MEM_CSB_reg[34]  ( .D(N222), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[34]) );
  DFFASX1_HVT \MEM_CSB_reg[33]  ( .D(N223), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[33]) );
  DFFASX1_HVT \MEM_CSB_reg[32]  ( .D(N224), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[32]) );
  DFFASX1_HVT \MEM_CSB_reg[31]  ( .D(N225), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[31]) );
  DFFASX1_HVT \MEM_CSB_reg[30]  ( .D(N226), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[30]) );
  DFFASX1_HVT \MEM_CSB_reg[29]  ( .D(N227), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[29]) );
  DFFASX1_HVT \MEM_CSB_reg[28]  ( .D(N228), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[28]) );
  DFFASX1_HVT \MEM_CSB_reg[27]  ( .D(N229), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[27]) );
  DFFASX1_HVT \MEM_CSB_reg[26]  ( .D(N230), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[26]) );
  DFFASX1_HVT \MEM_CSB_reg[25]  ( .D(N231), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[25]) );
  DFFASX1_HVT \MEM_CSB_reg[24]  ( .D(N232), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[24]) );
  DFFASX1_HVT \MEM_CSB_reg[23]  ( .D(N233), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[23]) );
  DFFASX1_HVT \MEM_CSB_reg[22]  ( .D(N234), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[22]) );
  DFFASX1_HVT \MEM_CSB_reg[21]  ( .D(N235), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[21]) );
  DFFASX1_HVT \MEM_CSB_reg[20]  ( .D(N236), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[20]) );
  DFFASX1_HVT \MEM_CSB_reg[19]  ( .D(N237), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[19]) );
  DFFASX1_HVT \MEM_CSB_reg[18]  ( .D(N238), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[18]) );
  DFFASX1_HVT \MEM_CSB_reg[17]  ( .D(N239), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[17]) );
  DFFASX1_HVT \MEM_CSB_reg[16]  ( .D(N240), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[16]) );
  DFFASX1_HVT \MEM_CSB_reg[15]  ( .D(N241), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[15]) );
  DFFASX1_HVT \MEM_CSB_reg[14]  ( .D(N242), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[14]) );
  DFFASX1_HVT \MEM_CSB_reg[13]  ( .D(N243), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[13]) );
  DFFASX1_HVT \MEM_CSB_reg[12]  ( .D(N244), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[12]) );
  DFFASX1_HVT \MEM_CSB_reg[11]  ( .D(N245), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[11]) );
  DFFASX1_HVT \MEM_CSB_reg[10]  ( .D(N246), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[10]) );
  DFFASX1_HVT \MEM_CSB_reg[9]  ( .D(N247), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[9]) );
  DFFASX1_HVT \MEM_CSB_reg[8]  ( .D(N248), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[8]) );
  DFFASX1_HVT \MEM_CSB_reg[7]  ( .D(N249), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[7]) );
  DFFASX1_HVT \MEM_CSB_reg[6]  ( .D(N250), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[6]) );
  DFFASX1_HVT \MEM_CSB_reg[5]  ( .D(N251), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[5]) );
  DFFASX1_HVT \MEM_CSB_reg[4]  ( .D(N252), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[4]) );
  DFFASX1_HVT \MEM_CSB_reg[3]  ( .D(N253), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[3]) );
  DFFASX1_HVT \MEM_CSB_reg[2]  ( .D(N254), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[2]) );
  DFFASX1_HVT \MEM_CSB_reg[1]  ( .D(N255), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[1]) );
  DFFASX1_HVT \MEM_CSB_reg[0]  ( .D(N256), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB[0]) );
  DFFASX1_HVT \MEM_OEB_reg[63]  ( .D(N65), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[63]) );
  DFFASX1_HVT \MEM_OEB_reg[62]  ( .D(N66), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[62]) );
  DFFASX1_HVT \MEM_OEB_reg[61]  ( .D(N67), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[61]) );
  DFFASX1_HVT \MEM_OEB_reg[60]  ( .D(N68), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[60]) );
  DFFASX1_HVT \MEM_OEB_reg[59]  ( .D(N69), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[59]) );
  DFFASX1_HVT \MEM_OEB_reg[58]  ( .D(N70), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[58]) );
  DFFASX1_HVT \MEM_OEB_reg[57]  ( .D(N71), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[57]) );
  DFFASX1_HVT \MEM_OEB_reg[56]  ( .D(N72), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[56]) );
  DFFASX1_HVT \MEM_OEB_reg[55]  ( .D(N73), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[55]) );
  DFFASX1_HVT \MEM_OEB_reg[54]  ( .D(N74), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[54]) );
  DFFASX1_HVT \MEM_OEB_reg[53]  ( .D(N75), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[53]) );
  DFFASX1_HVT \MEM_OEB_reg[52]  ( .D(N76), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[52]) );
  DFFASX1_HVT \MEM_OEB_reg[51]  ( .D(N77), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[51]) );
  DFFASX1_HVT \MEM_OEB_reg[50]  ( .D(N78), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[50]) );
  DFFASX1_HVT \MEM_OEB_reg[49]  ( .D(N79), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[49]) );
  DFFASX1_HVT \MEM_OEB_reg[48]  ( .D(N80), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[48]) );
  DFFASX1_HVT \MEM_OEB_reg[47]  ( .D(N81), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[47]) );
  DFFASX1_HVT \MEM_OEB_reg[46]  ( .D(N82), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[46]) );
  DFFASX1_HVT \MEM_OEB_reg[45]  ( .D(N83), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[45]) );
  DFFASX1_HVT \MEM_OEB_reg[44]  ( .D(N84), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[44]) );
  DFFASX1_HVT \MEM_OEB_reg[43]  ( .D(N85), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[43]) );
  DFFASX1_HVT \MEM_OEB_reg[42]  ( .D(N86), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[42]) );
  DFFASX1_HVT \MEM_OEB_reg[41]  ( .D(N87), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[41]) );
  DFFASX1_HVT \MEM_OEB_reg[40]  ( .D(N88), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[40]) );
  DFFASX1_HVT \MEM_OEB_reg[39]  ( .D(N89), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[39]) );
  DFFASX1_HVT \MEM_OEB_reg[38]  ( .D(N90), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[38]) );
  DFFASX1_HVT \MEM_OEB_reg[37]  ( .D(N91), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[37]) );
  DFFASX1_HVT \MEM_OEB_reg[36]  ( .D(N92), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[36]) );
  DFFASX1_HVT \MEM_OEB_reg[35]  ( .D(N93), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[35]) );
  DFFASX1_HVT \MEM_OEB_reg[34]  ( .D(N94), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[34]) );
  DFFASX1_HVT \MEM_OEB_reg[33]  ( .D(N95), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[33]) );
  DFFASX1_HVT \MEM_OEB_reg[32]  ( .D(N96), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[32]) );
  DFFASX1_HVT \MEM_OEB_reg[31]  ( .D(N97), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[31]) );
  DFFASX1_HVT \MEM_OEB_reg[30]  ( .D(N98), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[30]) );
  DFFASX1_HVT \MEM_OEB_reg[29]  ( .D(N99), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[29]) );
  DFFASX1_HVT \MEM_OEB_reg[28]  ( .D(N100), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[28]) );
  DFFASX1_HVT \MEM_OEB_reg[27]  ( .D(N101), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[27]) );
  DFFASX1_HVT \MEM_OEB_reg[26]  ( .D(N102), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[26]) );
  DFFASX1_HVT \MEM_OEB_reg[25]  ( .D(N103), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[25]) );
  DFFASX1_HVT \MEM_OEB_reg[24]  ( .D(N104), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[24]) );
  DFFASX1_HVT \MEM_OEB_reg[23]  ( .D(N105), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[23]) );
  DFFASX1_HVT \MEM_OEB_reg[22]  ( .D(N106), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[22]) );
  DFFASX1_HVT \MEM_OEB_reg[21]  ( .D(N107), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[21]) );
  DFFASX1_HVT \MEM_OEB_reg[20]  ( .D(N108), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[20]) );
  DFFASX1_HVT \MEM_OEB_reg[19]  ( .D(N109), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[19]) );
  DFFASX1_HVT \MEM_OEB_reg[18]  ( .D(N110), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[18]) );
  DFFASX1_HVT \MEM_OEB_reg[17]  ( .D(N111), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[17]) );
  DFFASX1_HVT \MEM_OEB_reg[16]  ( .D(N112), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[16]) );
  DFFASX1_HVT \MEM_OEB_reg[15]  ( .D(N113), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[15]) );
  DFFASX1_HVT \MEM_OEB_reg[14]  ( .D(N114), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[14]) );
  DFFASX1_HVT \MEM_OEB_reg[13]  ( .D(N115), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[13]) );
  DFFASX1_HVT \MEM_OEB_reg[12]  ( .D(N116), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[12]) );
  DFFASX1_HVT \MEM_OEB_reg[11]  ( .D(N117), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[11]) );
  DFFASX1_HVT \MEM_OEB_reg[10]  ( .D(N118), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[10]) );
  DFFASX1_HVT \MEM_OEB_reg[9]  ( .D(N119), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[9]) );
  DFFASX1_HVT \MEM_OEB_reg[8]  ( .D(N120), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[8]) );
  DFFASX1_HVT \MEM_OEB_reg[7]  ( .D(N121), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[7]) );
  DFFASX1_HVT \MEM_OEB_reg[6]  ( .D(N122), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[6]) );
  DFFASX1_HVT \MEM_OEB_reg[5]  ( .D(N123), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[5]) );
  DFFASX1_HVT \MEM_OEB_reg[4]  ( .D(N124), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[4]) );
  DFFASX1_HVT \MEM_OEB_reg[3]  ( .D(N125), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[3]) );
  DFFASX1_HVT \MEM_OEB_reg[2]  ( .D(N126), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[2]) );
  DFFASX1_HVT \MEM_OEB_reg[1]  ( .D(N127), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[1]) );
  DFFASX1_HVT \MEM_OEB_reg[0]  ( .D(N128), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB[0]) );
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
  DFFARX1_HVT \MEM_IDATA_reg[0]  ( .D(IDATA[0]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_IDATA[0]) );
  DFFARX1_HVT \MEM_ADDR_reg[9]  ( .D(ADDR[9]), .CLK(CLK), .RSTB(RSTN), .Q(
        MEM_ADDR[9]) );
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
  DFFARX1_HVT MEM_CE_reg ( .D(CE), .CLK(CLK), .RSTB(RSTN), .Q(MEM_CE) );
  INVX0_HVT U3 ( .A(OEB), .Y(n1) );
  AND3X1_HVT U4 ( .A1(n4), .A2(n3), .A3(n2), .Y(n32) );
  AND3X1_HVT U5 ( .A1(ADDR[13]), .A2(n4), .A3(n3), .Y(n23) );
  AND3X1_HVT U6 ( .A1(ADDR[14]), .A2(ADDR[15]), .A3(ADDR[13]), .Y(n17) );
  AND4X1_HVT U7 ( .A1(ADDR[12]), .A2(ADDR[11]), .A3(ADDR[10]), .A4(n1), .Y(n5)
         );
  NAND2X0_HVT U8 ( .A1(n17), .A2(n5), .Y(N65) );
  INVX0_HVT U9 ( .A(ADDR[10]), .Y(n14) );
  AND4X1_HVT U10 ( .A1(ADDR[12]), .A2(ADDR[11]), .A3(n14), .A4(n1), .Y(n6) );
  NAND2X0_HVT U11 ( .A1(n17), .A2(n6), .Y(N66) );
  INVX0_HVT U12 ( .A(ADDR[11]), .Y(n16) );
  AND4X1_HVT U13 ( .A1(ADDR[12]), .A2(ADDR[10]), .A3(n16), .A4(n1), .Y(n7) );
  NAND2X0_HVT U14 ( .A1(n17), .A2(n7), .Y(N67) );
  AND4X1_HVT U15 ( .A1(ADDR[12]), .A2(n16), .A3(n14), .A4(n1), .Y(n8) );
  NAND2X0_HVT U16 ( .A1(n17), .A2(n8), .Y(N68) );
  INVX0_HVT U17 ( .A(ADDR[12]), .Y(n15) );
  AND4X1_HVT U18 ( .A1(ADDR[11]), .A2(ADDR[10]), .A3(n15), .A4(n1), .Y(n9) );
  NAND2X0_HVT U19 ( .A1(n17), .A2(n9), .Y(N69) );
  AND4X1_HVT U20 ( .A1(ADDR[11]), .A2(n14), .A3(n15), .A4(n1), .Y(n10) );
  NAND2X0_HVT U21 ( .A1(n17), .A2(n10), .Y(N70) );
  AND4X1_HVT U22 ( .A1(ADDR[10]), .A2(n16), .A3(n15), .A4(n1), .Y(n11) );
  NAND2X0_HVT U23 ( .A1(n17), .A2(n11), .Y(N71) );
  AND4X1_HVT U24 ( .A1(n16), .A2(n15), .A3(n14), .A4(n1), .Y(n12) );
  NAND2X0_HVT U25 ( .A1(n17), .A2(n12), .Y(N72) );
  INVX0_HVT U26 ( .A(ADDR[13]), .Y(n2) );
  AND3X1_HVT U27 ( .A1(ADDR[15]), .A2(ADDR[14]), .A3(n2), .Y(n18) );
  NAND2X0_HVT U28 ( .A1(n5), .A2(n18), .Y(N73) );
  NAND2X0_HVT U29 ( .A1(n6), .A2(n18), .Y(N74) );
  NAND2X0_HVT U30 ( .A1(n7), .A2(n18), .Y(N75) );
  NAND2X0_HVT U31 ( .A1(n8), .A2(n18), .Y(N76) );
  NAND2X0_HVT U32 ( .A1(n9), .A2(n18), .Y(N77) );
  NAND2X0_HVT U33 ( .A1(n10), .A2(n18), .Y(N78) );
  NAND2X0_HVT U34 ( .A1(n11), .A2(n18), .Y(N79) );
  NAND2X0_HVT U35 ( .A1(n12), .A2(n18), .Y(N80) );
  INVX0_HVT U36 ( .A(ADDR[14]), .Y(n4) );
  AND3X1_HVT U37 ( .A1(ADDR[15]), .A2(ADDR[13]), .A3(n4), .Y(n19) );
  NAND2X0_HVT U38 ( .A1(n5), .A2(n19), .Y(N81) );
  NAND2X0_HVT U39 ( .A1(n6), .A2(n19), .Y(N82) );
  NAND2X0_HVT U40 ( .A1(n7), .A2(n19), .Y(N83) );
  NAND2X0_HVT U41 ( .A1(n8), .A2(n19), .Y(N84) );
  NAND2X0_HVT U42 ( .A1(n9), .A2(n19), .Y(N85) );
  NAND2X0_HVT U43 ( .A1(n10), .A2(n19), .Y(N86) );
  NAND2X0_HVT U44 ( .A1(n11), .A2(n19), .Y(N87) );
  NAND2X0_HVT U45 ( .A1(n12), .A2(n19), .Y(N88) );
  AND3X1_HVT U46 ( .A1(ADDR[15]), .A2(n4), .A3(n2), .Y(n20) );
  NAND2X0_HVT U47 ( .A1(n5), .A2(n20), .Y(N89) );
  NAND2X0_HVT U48 ( .A1(n6), .A2(n20), .Y(N90) );
  NAND2X0_HVT U49 ( .A1(n7), .A2(n20), .Y(N91) );
  NAND2X0_HVT U50 ( .A1(n8), .A2(n20), .Y(N92) );
  NAND2X0_HVT U51 ( .A1(n9), .A2(n20), .Y(N93) );
  NAND2X0_HVT U52 ( .A1(n10), .A2(n20), .Y(N94) );
  NAND2X0_HVT U53 ( .A1(n11), .A2(n20), .Y(N95) );
  NAND2X0_HVT U54 ( .A1(n12), .A2(n20), .Y(N96) );
  INVX0_HVT U55 ( .A(ADDR[15]), .Y(n3) );
  AND3X1_HVT U56 ( .A1(ADDR[14]), .A2(ADDR[13]), .A3(n3), .Y(n21) );
  NAND2X0_HVT U57 ( .A1(n5), .A2(n21), .Y(N97) );
  NAND2X0_HVT U58 ( .A1(n6), .A2(n21), .Y(N98) );
  NAND2X0_HVT U59 ( .A1(n7), .A2(n21), .Y(N99) );
  NAND2X0_HVT U60 ( .A1(n8), .A2(n21), .Y(N100) );
  NAND2X0_HVT U61 ( .A1(n9), .A2(n21), .Y(N101) );
  NAND2X0_HVT U62 ( .A1(n10), .A2(n21), .Y(N102) );
  NAND2X0_HVT U63 ( .A1(n11), .A2(n21), .Y(N103) );
  NAND2X0_HVT U64 ( .A1(n12), .A2(n21), .Y(N104) );
  AND3X1_HVT U65 ( .A1(ADDR[14]), .A2(n3), .A3(n2), .Y(n22) );
  NAND2X0_HVT U66 ( .A1(n5), .A2(n22), .Y(N105) );
  NAND2X0_HVT U67 ( .A1(n6), .A2(n22), .Y(N106) );
  NAND2X0_HVT U68 ( .A1(n7), .A2(n22), .Y(N107) );
  NAND2X0_HVT U69 ( .A1(n8), .A2(n22), .Y(N108) );
  NAND2X0_HVT U70 ( .A1(n9), .A2(n22), .Y(N109) );
  NAND2X0_HVT U71 ( .A1(n10), .A2(n22), .Y(N110) );
  NAND2X0_HVT U72 ( .A1(n11), .A2(n22), .Y(N111) );
  NAND2X0_HVT U73 ( .A1(n12), .A2(n22), .Y(N112) );
  NAND2X0_HVT U74 ( .A1(n5), .A2(n23), .Y(N113) );
  NAND2X0_HVT U75 ( .A1(n6), .A2(n23), .Y(N114) );
  NAND2X0_HVT U76 ( .A1(n7), .A2(n23), .Y(N115) );
  NAND2X0_HVT U77 ( .A1(n8), .A2(n23), .Y(N116) );
  NAND2X0_HVT U78 ( .A1(n9), .A2(n23), .Y(N117) );
  NAND2X0_HVT U79 ( .A1(n10), .A2(n23), .Y(N118) );
  NAND2X0_HVT U80 ( .A1(n11), .A2(n23), .Y(N119) );
  NAND2X0_HVT U81 ( .A1(n12), .A2(n23), .Y(N120) );
  NAND2X0_HVT U82 ( .A1(n5), .A2(n32), .Y(N121) );
  NAND2X0_HVT U83 ( .A1(n6), .A2(n32), .Y(N122) );
  NAND2X0_HVT U84 ( .A1(n7), .A2(n32), .Y(N123) );
  NAND2X0_HVT U85 ( .A1(n8), .A2(n32), .Y(N124) );
  NAND2X0_HVT U86 ( .A1(n9), .A2(n32), .Y(N125) );
  NAND2X0_HVT U87 ( .A1(n10), .A2(n32), .Y(N126) );
  NAND2X0_HVT U88 ( .A1(n11), .A2(n32), .Y(N127) );
  NAND2X0_HVT U89 ( .A1(n12), .A2(n32), .Y(N128) );
  INVX0_HVT U90 ( .A(CSB), .Y(n13) );
  AND4X1_HVT U91 ( .A1(ADDR[12]), .A2(ADDR[11]), .A3(ADDR[10]), .A4(n13), .Y(
        n24) );
  NAND2X0_HVT U92 ( .A1(n17), .A2(n24), .Y(N193) );
  AND4X1_HVT U93 ( .A1(ADDR[12]), .A2(ADDR[11]), .A3(n14), .A4(n13), .Y(n25)
         );
  NAND2X0_HVT U94 ( .A1(n17), .A2(n25), .Y(N194) );
  AND4X1_HVT U95 ( .A1(ADDR[12]), .A2(ADDR[10]), .A3(n16), .A4(n13), .Y(n26)
         );
  NAND2X0_HVT U96 ( .A1(n17), .A2(n26), .Y(N195) );
  AND4X1_HVT U97 ( .A1(ADDR[12]), .A2(n16), .A3(n14), .A4(n13), .Y(n27) );
  NAND2X0_HVT U98 ( .A1(n17), .A2(n27), .Y(N196) );
  AND4X1_HVT U99 ( .A1(ADDR[11]), .A2(ADDR[10]), .A3(n15), .A4(n13), .Y(n28)
         );
  NAND2X0_HVT U100 ( .A1(n17), .A2(n28), .Y(N197) );
  AND4X1_HVT U101 ( .A1(ADDR[11]), .A2(n14), .A3(n15), .A4(n13), .Y(n29) );
  NAND2X0_HVT U102 ( .A1(n17), .A2(n29), .Y(N198) );
  AND4X1_HVT U103 ( .A1(ADDR[10]), .A2(n16), .A3(n15), .A4(n13), .Y(n30) );
  NAND2X0_HVT U104 ( .A1(n17), .A2(n30), .Y(N199) );
  AND4X1_HVT U105 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .Y(n31) );
  NAND2X0_HVT U106 ( .A1(n17), .A2(n31), .Y(N200) );
  NAND2X0_HVT U107 ( .A1(n18), .A2(n24), .Y(N201) );
  NAND2X0_HVT U108 ( .A1(n18), .A2(n25), .Y(N202) );
  NAND2X0_HVT U109 ( .A1(n18), .A2(n26), .Y(N203) );
  NAND2X0_HVT U110 ( .A1(n18), .A2(n27), .Y(N204) );
  NAND2X0_HVT U111 ( .A1(n18), .A2(n28), .Y(N205) );
  NAND2X0_HVT U112 ( .A1(n18), .A2(n29), .Y(N206) );
  NAND2X0_HVT U113 ( .A1(n18), .A2(n30), .Y(N207) );
  NAND2X0_HVT U114 ( .A1(n18), .A2(n31), .Y(N208) );
  NAND2X0_HVT U115 ( .A1(n19), .A2(n24), .Y(N209) );
  NAND2X0_HVT U116 ( .A1(n19), .A2(n25), .Y(N210) );
  NAND2X0_HVT U117 ( .A1(n19), .A2(n26), .Y(N211) );
  NAND2X0_HVT U118 ( .A1(n19), .A2(n27), .Y(N212) );
  NAND2X0_HVT U119 ( .A1(n19), .A2(n28), .Y(N213) );
  NAND2X0_HVT U120 ( .A1(n19), .A2(n29), .Y(N214) );
  NAND2X0_HVT U121 ( .A1(n19), .A2(n30), .Y(N215) );
  NAND2X0_HVT U122 ( .A1(n19), .A2(n31), .Y(N216) );
  NAND2X0_HVT U123 ( .A1(n20), .A2(n24), .Y(N217) );
  NAND2X0_HVT U124 ( .A1(n20), .A2(n25), .Y(N218) );
  NAND2X0_HVT U125 ( .A1(n20), .A2(n26), .Y(N219) );
  NAND2X0_HVT U126 ( .A1(n20), .A2(n27), .Y(N220) );
  NAND2X0_HVT U127 ( .A1(n20), .A2(n28), .Y(N221) );
  NAND2X0_HVT U128 ( .A1(n20), .A2(n29), .Y(N222) );
  NAND2X0_HVT U129 ( .A1(n20), .A2(n30), .Y(N223) );
  NAND2X0_HVT U130 ( .A1(n20), .A2(n31), .Y(N224) );
  NAND2X0_HVT U131 ( .A1(n21), .A2(n24), .Y(N225) );
  NAND2X0_HVT U132 ( .A1(n21), .A2(n25), .Y(N226) );
  NAND2X0_HVT U133 ( .A1(n21), .A2(n26), .Y(N227) );
  NAND2X0_HVT U134 ( .A1(n21), .A2(n27), .Y(N228) );
  NAND2X0_HVT U135 ( .A1(n21), .A2(n28), .Y(N229) );
  NAND2X0_HVT U136 ( .A1(n21), .A2(n29), .Y(N230) );
  NAND2X0_HVT U137 ( .A1(n21), .A2(n30), .Y(N231) );
  NAND2X0_HVT U138 ( .A1(n21), .A2(n31), .Y(N232) );
  NAND2X0_HVT U139 ( .A1(n22), .A2(n24), .Y(N233) );
  NAND2X0_HVT U140 ( .A1(n22), .A2(n25), .Y(N234) );
  NAND2X0_HVT U141 ( .A1(n22), .A2(n26), .Y(N235) );
  NAND2X0_HVT U142 ( .A1(n22), .A2(n27), .Y(N236) );
  NAND2X0_HVT U143 ( .A1(n22), .A2(n28), .Y(N237) );
  NAND2X0_HVT U144 ( .A1(n22), .A2(n29), .Y(N238) );
  NAND2X0_HVT U145 ( .A1(n22), .A2(n30), .Y(N239) );
  NAND2X0_HVT U146 ( .A1(n22), .A2(n31), .Y(N240) );
  NAND2X0_HVT U147 ( .A1(n23), .A2(n24), .Y(N241) );
  NAND2X0_HVT U148 ( .A1(n23), .A2(n25), .Y(N242) );
  NAND2X0_HVT U149 ( .A1(n23), .A2(n26), .Y(N243) );
  NAND2X0_HVT U150 ( .A1(n23), .A2(n27), .Y(N244) );
  NAND2X0_HVT U151 ( .A1(n23), .A2(n28), .Y(N245) );
  NAND2X0_HVT U152 ( .A1(n23), .A2(n29), .Y(N246) );
  NAND2X0_HVT U153 ( .A1(n23), .A2(n30), .Y(N247) );
  NAND2X0_HVT U154 ( .A1(n23), .A2(n31), .Y(N248) );
  NAND2X0_HVT U155 ( .A1(n32), .A2(n24), .Y(N249) );
  NAND2X0_HVT U156 ( .A1(n32), .A2(n25), .Y(N250) );
  NAND2X0_HVT U157 ( .A1(n32), .A2(n26), .Y(N251) );
  NAND2X0_HVT U158 ( .A1(n32), .A2(n27), .Y(N252) );
  NAND2X0_HVT U159 ( .A1(n32), .A2(n28), .Y(N253) );
  NAND2X0_HVT U160 ( .A1(n32), .A2(n29), .Y(N254) );
  NAND2X0_HVT U161 ( .A1(n32), .A2(n30), .Y(N255) );
  NAND2X0_HVT U162 ( .A1(n32), .A2(n31), .Y(N256) );
endmodule


module SRAM64KB ( ODATA, MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, 
        MEM_IDATA, MEM_ODATA_SELECT );
  output [7:0] ODATA;
  input [9:0] MEM_ADDR;
  input [63:0] MEM_OEB;
  input [63:0] MEM_CSB;
  input [7:0] MEM_IDATA;
  input [5:0] MEM_ODATA_SELECT;
  input MEM_CE, MEM_WEB;

  wire   [511:0] TMP_ODATA;
  assign ODATA[7] = TMP_ODATA[7];
  assign ODATA[6] = TMP_ODATA[6];
  assign ODATA[5] = TMP_ODATA[5];
  assign ODATA[4] = TMP_ODATA[4];
  assign ODATA[3] = TMP_ODATA[3];
  assign ODATA[2] = TMP_ODATA[2];
  assign ODATA[1] = TMP_ODATA[1];
  assign ODATA[0] = TMP_ODATA[0];

  SRAM1RW1024x8 \genblk1[0].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[7:0]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[0]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[0]) );
  SRAM1RW1024x8 \genblk1[1].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[1]), .WEB(MEM_WEB), .OEB(MEM_OEB[1]) );
  SRAM1RW1024x8 \genblk1[2].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[2]), .WEB(MEM_WEB), .OEB(MEM_OEB[2]) );
  SRAM1RW1024x8 \genblk1[3].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[3]), .WEB(MEM_WEB), .OEB(MEM_OEB[3]) );
  SRAM1RW1024x8 \genblk1[4].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[4]), .WEB(MEM_WEB), .OEB(MEM_OEB[4]) );
  SRAM1RW1024x8 \genblk1[5].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[5]), .WEB(MEM_WEB), .OEB(MEM_OEB[5]) );
  SRAM1RW1024x8 \genblk1[6].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[6]), .WEB(MEM_WEB), .OEB(MEM_OEB[6]) );
  SRAM1RW1024x8 \genblk1[7].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[7]), .WEB(MEM_WEB), .OEB(MEM_OEB[7]) );
  SRAM1RW1024x8 \genblk1[8].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[8]), .WEB(MEM_WEB), .OEB(MEM_OEB[8]) );
  SRAM1RW1024x8 \genblk1[9].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[9]), .WEB(MEM_WEB), .OEB(MEM_OEB[9]) );
  SRAM1RW1024x8 \genblk1[10].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[10]), .WEB(MEM_WEB), .OEB(MEM_OEB[10]) );
  SRAM1RW1024x8 \genblk1[11].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[11]), .WEB(MEM_WEB), .OEB(MEM_OEB[11]) );
  SRAM1RW1024x8 \genblk1[12].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[12]), .WEB(MEM_WEB), .OEB(MEM_OEB[12]) );
  SRAM1RW1024x8 \genblk1[13].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[13]), .WEB(MEM_WEB), .OEB(MEM_OEB[13]) );
  SRAM1RW1024x8 \genblk1[14].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[14]), .WEB(MEM_WEB), .OEB(MEM_OEB[14]) );
  SRAM1RW1024x8 \genblk1[15].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[15]), .WEB(MEM_WEB), .OEB(MEM_OEB[15]) );
  SRAM1RW1024x8 \genblk1[16].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[16]), .WEB(MEM_WEB), .OEB(MEM_OEB[16]) );
  SRAM1RW1024x8 \genblk1[17].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[17]), .WEB(MEM_WEB), .OEB(MEM_OEB[17]) );
  SRAM1RW1024x8 \genblk1[18].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[18]), .WEB(MEM_WEB), .OEB(MEM_OEB[18]) );
  SRAM1RW1024x8 \genblk1[19].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[19]), .WEB(MEM_WEB), .OEB(MEM_OEB[19]) );
  SRAM1RW1024x8 \genblk1[20].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[20]), .WEB(MEM_WEB), .OEB(MEM_OEB[20]) );
  SRAM1RW1024x8 \genblk1[21].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[21]), .WEB(MEM_WEB), .OEB(MEM_OEB[21]) );
  SRAM1RW1024x8 \genblk1[22].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[22]), .WEB(MEM_WEB), .OEB(MEM_OEB[22]) );
  SRAM1RW1024x8 \genblk1[23].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[23]), .WEB(MEM_WEB), .OEB(MEM_OEB[23]) );
  SRAM1RW1024x8 \genblk1[24].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[24]), .WEB(MEM_WEB), .OEB(MEM_OEB[24]) );
  SRAM1RW1024x8 \genblk1[25].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[25]), .WEB(MEM_WEB), .OEB(MEM_OEB[25]) );
  SRAM1RW1024x8 \genblk1[26].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[26]), .WEB(MEM_WEB), .OEB(MEM_OEB[26]) );
  SRAM1RW1024x8 \genblk1[27].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[27]), .WEB(MEM_WEB), .OEB(MEM_OEB[27]) );
  SRAM1RW1024x8 \genblk1[28].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[28]), .WEB(MEM_WEB), .OEB(MEM_OEB[28]) );
  SRAM1RW1024x8 \genblk1[29].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[29]), .WEB(MEM_WEB), .OEB(MEM_OEB[29]) );
  SRAM1RW1024x8 \genblk1[30].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[30]), .WEB(MEM_WEB), .OEB(MEM_OEB[30]) );
  SRAM1RW1024x8 \genblk1[31].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[31]), .WEB(MEM_WEB), .OEB(MEM_OEB[31]) );
  SRAM1RW1024x8 \genblk1[32].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[32]), .WEB(MEM_WEB), .OEB(MEM_OEB[32]) );
  SRAM1RW1024x8 \genblk1[33].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[33]), .WEB(MEM_WEB), .OEB(MEM_OEB[33]) );
  SRAM1RW1024x8 \genblk1[34].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[34]), .WEB(MEM_WEB), .OEB(MEM_OEB[34]) );
  SRAM1RW1024x8 \genblk1[35].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[35]), .WEB(MEM_WEB), .OEB(MEM_OEB[35]) );
  SRAM1RW1024x8 \genblk1[36].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[36]), .WEB(MEM_WEB), .OEB(MEM_OEB[36]) );
  SRAM1RW1024x8 \genblk1[37].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[37]), .WEB(MEM_WEB), .OEB(MEM_OEB[37]) );
  SRAM1RW1024x8 \genblk1[38].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[38]), .WEB(MEM_WEB), .OEB(MEM_OEB[38]) );
  SRAM1RW1024x8 \genblk1[39].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[39]), .WEB(MEM_WEB), .OEB(MEM_OEB[39]) );
  SRAM1RW1024x8 \genblk1[40].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[40]), .WEB(MEM_WEB), .OEB(MEM_OEB[40]) );
  SRAM1RW1024x8 \genblk1[41].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[41]), .WEB(MEM_WEB), .OEB(MEM_OEB[41]) );
  SRAM1RW1024x8 \genblk1[42].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[42]), .WEB(MEM_WEB), .OEB(MEM_OEB[42]) );
  SRAM1RW1024x8 \genblk1[43].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[43]), .WEB(MEM_WEB), .OEB(MEM_OEB[43]) );
  SRAM1RW1024x8 \genblk1[44].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[44]), .WEB(MEM_WEB), .OEB(MEM_OEB[44]) );
  SRAM1RW1024x8 \genblk1[45].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[45]), .WEB(MEM_WEB), .OEB(MEM_OEB[45]) );
  SRAM1RW1024x8 \genblk1[46].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[46]), .WEB(MEM_WEB), .OEB(MEM_OEB[46]) );
  SRAM1RW1024x8 \genblk1[47].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[47]), .WEB(MEM_WEB), .OEB(MEM_OEB[47]) );
  SRAM1RW1024x8 \genblk1[48].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[48]), .WEB(MEM_WEB), .OEB(MEM_OEB[48]) );
  SRAM1RW1024x8 \genblk1[49].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[49]), .WEB(MEM_WEB), .OEB(MEM_OEB[49]) );
  SRAM1RW1024x8 \genblk1[50].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[50]), .WEB(MEM_WEB), .OEB(MEM_OEB[50]) );
  SRAM1RW1024x8 \genblk1[51].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[51]), .WEB(MEM_WEB), .OEB(MEM_OEB[51]) );
  SRAM1RW1024x8 \genblk1[52].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[52]), .WEB(MEM_WEB), .OEB(MEM_OEB[52]) );
  SRAM1RW1024x8 \genblk1[53].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[53]), .WEB(MEM_WEB), .OEB(MEM_OEB[53]) );
  SRAM1RW1024x8 \genblk1[54].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[54]), .WEB(MEM_WEB), .OEB(MEM_OEB[54]) );
  SRAM1RW1024x8 \genblk1[55].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[55]), .WEB(MEM_WEB), .OEB(MEM_OEB[55]) );
  SRAM1RW1024x8 \genblk1[56].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[56]), .WEB(MEM_WEB), .OEB(MEM_OEB[56]) );
  SRAM1RW1024x8 \genblk1[57].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[57]), .WEB(MEM_WEB), .OEB(MEM_OEB[57]) );
  SRAM1RW1024x8 \genblk1[58].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[58]), .WEB(MEM_WEB), .OEB(MEM_OEB[58]) );
  SRAM1RW1024x8 \genblk1[59].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[59]), .WEB(MEM_WEB), .OEB(MEM_OEB[59]) );
  SRAM1RW1024x8 \genblk1[60].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[60]), .WEB(MEM_WEB), .OEB(MEM_OEB[60]) );
  SRAM1RW1024x8 \genblk1[61].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[61]), .WEB(MEM_WEB), .OEB(MEM_OEB[61]) );
  SRAM1RW1024x8 \genblk1[62].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[62]), .WEB(MEM_WEB), .OEB(MEM_OEB[62]) );
  SRAM1RW1024x8 \genblk1[63].UMEM  ( .I(MEM_IDATA), .A(MEM_ADDR), .CE(MEM_CE), 
        .CSB(MEM_CSB[63]), .WEB(MEM_WEB), .OEB(MEM_OEB[63]) );
endmodule


module MEMCTRL ( ODATA, ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB );
  output [7:0] ODATA;
  input [15:0] ADDR;
  input [7:0] IDATA;
  input CE, CLK, CSB, OEB, RSTN, WEB;
  wire   MEM_CE, MEM_WEB;
  wire   [9:0] MEM_ADDR;
  wire   [63:0] MEM_OEB;
  wire   [63:0] MEM_CSB;
  wire   [7:0] MEM_IDATA;

  FSM UFSM ( .MEM_ADDR(MEM_ADDR), .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), 
        .MEM_OEB(MEM_OEB), .MEM_CSB(MEM_CSB), .MEM_IDATA(MEM_IDATA), .CLK(CLK), 
        .RSTN(RSTN), .ADDR(ADDR), .CE(CE), .CSB(CSB), .WEB(WEB), .OEB(OEB), 
        .IDATA(IDATA) );
  SRAM64KB USRAM ( .ODATA(ODATA), .MEM_ADDR(MEM_ADDR), .MEM_CE(MEM_CE), 
        .MEM_WEB(MEM_WEB), .MEM_OEB(MEM_OEB), .MEM_CSB(MEM_CSB), .MEM_IDATA(
        MEM_IDATA), .MEM_ODATA_SELECT({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}) );
endmodule

