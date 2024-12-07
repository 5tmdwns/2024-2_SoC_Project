/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Sat Dec  7 05:05:12 2024
/////////////////////////////////////////////////////////////


module FSM ( MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB_BANK1, MEM_CSB_BANK1, 
        MEM_OEB_BANK2, MEM_CSB_BANK2, MEM_OEB_BANK3, MEM_CSB_BANK3, 
        MEM_OEB_BANK4, MEM_CSB_BANK4, MEM_IDATA, RSTN, ADDR, CE, CSB, WEB, OEB, 
        IDATA, CLK, \MEM_ODATA_SELECT[3]_BAR , \MEM_ODATA_SELECT[2] , 
        \MEM_ODATA_SELECT[1] , \MEM_ODATA_SELECT[0]  );
  output [9:0] MEM_ADDR;
  output [15:0] MEM_OEB_BANK1;
  output [15:0] MEM_CSB_BANK1;
  output [15:0] MEM_OEB_BANK2;
  output [15:0] MEM_CSB_BANK2;
  output [15:0] MEM_OEB_BANK3;
  output [15:0] MEM_CSB_BANK3;
  output [15:0] MEM_OEB_BANK4;
  output [15:0] MEM_CSB_BANK4;
  output [7:0] MEM_IDATA;
  input [15:0] ADDR;
  input [7:0] IDATA;
  input RSTN, CE, CSB, WEB, OEB, CLK;
  output MEM_CE, MEM_WEB, \MEM_ODATA_SELECT[3]_BAR , \MEM_ODATA_SELECT[2] ,
         \MEM_ODATA_SELECT[1] , \MEM_ODATA_SELECT[0] ;
  wire   n192, n193, n194, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n183, n184, n185, n186,
         n187, n188;
  wire   [3:0] MEM_ODATA_SELECT;
  assign \MEM_ODATA_SELECT[2]  = MEM_ODATA_SELECT[2];
  assign \MEM_ODATA_SELECT[1]  = MEM_ODATA_SELECT[1];
  assign \MEM_ODATA_SELECT[0]  = MEM_ODATA_SELECT[0];

  DFFASX1_HVT \MEM_OEB_BANK2_reg[15]  ( .D(n182), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[15]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[14]  ( .D(n181), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[14]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[13]  ( .D(n180), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[13]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[12]  ( .D(n179), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[12]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[11]  ( .D(n178), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[11]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[10]  ( .D(n177), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[10]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[9]  ( .D(n176), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[9]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[8]  ( .D(n175), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[8]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[7]  ( .D(n174), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[7]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[6]  ( .D(n173), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[6]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[5]  ( .D(n172), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[5]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[4]  ( .D(n171), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[4]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[3]  ( .D(n170), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[3]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[2]  ( .D(n169), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[2]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[1]  ( .D(n168), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[1]) );
  DFFASX1_HVT \MEM_OEB_BANK2_reg[0]  ( .D(n167), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK2[0]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[15]  ( .D(n166), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[15]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[14]  ( .D(n165), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[14]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[13]  ( .D(n164), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[13]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[12]  ( .D(n163), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[12]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[11]  ( .D(n162), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[11]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[10]  ( .D(n161), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[10]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[9]  ( .D(n160), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[9]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[8]  ( .D(n159), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[8]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[7]  ( .D(n158), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[7]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[6]  ( .D(n157), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[6]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[5]  ( .D(n156), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[5]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[4]  ( .D(n155), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[4]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[3]  ( .D(n154), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[3]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[2]  ( .D(n153), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[2]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[1]  ( .D(n152), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[1]) );
  DFFASX1_HVT \MEM_CSB_BANK3_reg[0]  ( .D(n151), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK3[0]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[15]  ( .D(n150), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[15]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[14]  ( .D(n149), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[14]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[13]  ( .D(n148), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[13]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[12]  ( .D(n147), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[12]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[11]  ( .D(n146), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[11]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[10]  ( .D(n145), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[10]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[9]  ( .D(n144), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[9]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[8]  ( .D(n143), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[8]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[7]  ( .D(n142), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[7]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[6]  ( .D(n141), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[6]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[5]  ( .D(n140), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[5]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[4]  ( .D(n139), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[4]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[3]  ( .D(n138), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[3]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[2]  ( .D(n137), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[2]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[1]  ( .D(n136), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[1]) );
  DFFASX1_HVT \MEM_CSB_BANK2_reg[0]  ( .D(n135), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK2[0]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[15]  ( .D(n134), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[15]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[14]  ( .D(n133), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[14]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[13]  ( .D(n132), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[13]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[12]  ( .D(n131), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[12]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[11]  ( .D(n130), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[11]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[10]  ( .D(n129), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[10]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[9]  ( .D(n128), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[9]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[8]  ( .D(n127), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[8]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[7]  ( .D(n126), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[7]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[6]  ( .D(n125), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[6]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[5]  ( .D(n124), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[5]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[4]  ( .D(n123), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[4]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[3]  ( .D(n122), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[3]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[2]  ( .D(n121), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[2]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[1]  ( .D(n120), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[1]) );
  DFFASX1_HVT \MEM_CSB_BANK4_reg[0]  ( .D(n119), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK4[0]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[15]  ( .D(n118), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[15]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[14]  ( .D(n117), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[14]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[13]  ( .D(n116), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[13]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[12]  ( .D(n115), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[12]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[11]  ( .D(n114), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[11]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[10]  ( .D(n113), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[10]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[9]  ( .D(n112), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[9]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[8]  ( .D(n111), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[8]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[7]  ( .D(n110), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[7]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[6]  ( .D(n109), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[6]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[5]  ( .D(n108), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[5]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[4]  ( .D(n107), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[4]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[3]  ( .D(n106), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[3]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[2]  ( .D(n105), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[2]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[1]  ( .D(n104), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[1]) );
  DFFASX1_HVT \MEM_OEB_BANK4_reg[0]  ( .D(n103), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK4[0]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[15]  ( .D(n102), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[15]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[14]  ( .D(n101), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[14]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[13]  ( .D(n100), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[13]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[12]  ( .D(n99), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[12]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[11]  ( .D(n98), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[11]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[10]  ( .D(n97), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[10]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[9]  ( .D(n96), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[9]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[8]  ( .D(n95), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[8]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[7]  ( .D(n94), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[7]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[6]  ( .D(n93), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[6]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[5]  ( .D(n92), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[5]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[4]  ( .D(n91), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[4]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[3]  ( .D(n90), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[3]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[2]  ( .D(n89), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[2]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[1]  ( .D(n88), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[1]) );
  DFFASX1_HVT \MEM_OEB_BANK3_reg[0]  ( .D(n87), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK3[0]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[15]  ( .D(n86), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[15]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[14]  ( .D(n85), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[14]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[13]  ( .D(n84), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[13]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[12]  ( .D(n83), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[12]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[11]  ( .D(n82), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[11]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[10]  ( .D(n81), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[10]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[9]  ( .D(n80), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[9]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[8]  ( .D(n79), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[8]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[7]  ( .D(n78), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[7]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[6]  ( .D(n77), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[6]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[5]  ( .D(n76), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[5]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[4]  ( .D(n75), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[4]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[3]  ( .D(n74), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[3]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[2]  ( .D(n73), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[2]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[1]  ( .D(n72), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[1]) );
  DFFASX1_HVT \MEM_OEB_BANK1_reg[0]  ( .D(n71), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_OEB_BANK1[0]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[15]  ( .D(n70), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[15]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[14]  ( .D(n69), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[14]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[13]  ( .D(n68), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[13]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[12]  ( .D(n67), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[12]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[11]  ( .D(n66), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[11]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[10]  ( .D(n65), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[10]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[9]  ( .D(n64), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[9]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[8]  ( .D(n63), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[8]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[7]  ( .D(n62), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[7]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[6]  ( .D(n61), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[6]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[5]  ( .D(n60), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[5]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[4]  ( .D(n59), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[4]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[3]  ( .D(n58), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[3]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[2]  ( .D(n57), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[2]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[1]  ( .D(n56), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[1]) );
  DFFASX1_HVT \MEM_CSB_BANK1_reg[0]  ( .D(n55), .CLK(CLK), .SETB(RSTN), .Q(
        MEM_CSB_BANK1[0]) );
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
  DFFARX1_HVT \MEM_ODATA_SELECT_reg[3]  ( .D(ADDR[13]), .CLK(CLK), .RSTB(RSTN), 
        .QN(\MEM_ODATA_SELECT[3]_BAR ) );
  DFFARX1_HVT \MEM_ODATA_SELECT_reg[2]  ( .D(ADDR[12]), .CLK(CLK), .RSTB(RSTN), 
        .Q(n192) );
  DFFARX1_HVT \MEM_ODATA_SELECT_reg[1]  ( .D(ADDR[11]), .CLK(CLK), .RSTB(RSTN), 
        .Q(n193) );
  DFFARX1_HVT \MEM_ODATA_SELECT_reg[0]  ( .D(ADDR[10]), .CLK(CLK), .RSTB(RSTN), 
        .Q(n194) );
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
  DFFASX1_HVT MEM_WEB_reg ( .D(WEB), .CLK(CLK), .SETB(RSTN), .Q(MEM_WEB) );
  NOR2X0_HVT U3 ( .A1(ADDR[13]), .A2(CSB), .Y(n15) );
  INVX0_HVT U4 ( .A(n184), .Y(n185) );
  INVX0_HVT U5 ( .A(n25), .Y(n188) );
  INVX0_HVT U6 ( .A(n22), .Y(n21) );
  INVX0_HVT U7 ( .A(n17), .Y(n16) );
  NBUFFX2_HVT U8 ( .A(n194), .Y(MEM_ODATA_SELECT[0]) );
  NBUFFX2_HVT U9 ( .A(n193), .Y(MEM_ODATA_SELECT[1]) );
  NBUFFX2_HVT U10 ( .A(n192), .Y(MEM_ODATA_SELECT[2]) );
  INVX0_HVT U11 ( .A(ADDR[15]), .Y(n23) );
  NAND2X0_HVT U12 ( .A1(ADDR[14]), .A2(n23), .Y(n2) );
  INVX2_HVT U13 ( .A(n2), .Y(n17) );
  INVX0_HVT U14 ( .A(OEB), .Y(n4) );
  AND2X1_HVT U15 ( .A1(ADDR[13]), .A2(n4), .Y(n3) );
  NAND4X0_HVT U16 ( .A1(ADDR[12]), .A2(ADDR[10]), .A3(ADDR[11]), .A4(n3), .Y(
        n26) );
  AO22X1_HVT U17 ( .A1(n17), .A2(n26), .A3(n16), .A4(MEM_OEB_BANK2[15]), .Y(
        n182) );
  INVX0_HVT U18 ( .A(ADDR[10]), .Y(n13) );
  AND3X1_HVT U19 ( .A1(ADDR[12]), .A2(ADDR[11]), .A3(n13), .Y(n9) );
  NAND2X0_HVT U20 ( .A1(n3), .A2(n9), .Y(n27) );
  AO22X1_HVT U21 ( .A1(n17), .A2(n27), .A3(n16), .A4(MEM_OEB_BANK2[14]), .Y(
        n181) );
  INVX0_HVT U22 ( .A(ADDR[11]), .Y(n12) );
  AND3X1_HVT U23 ( .A1(ADDR[10]), .A2(ADDR[12]), .A3(n12), .Y(n10) );
  NAND2X0_HVT U24 ( .A1(n3), .A2(n10), .Y(n28) );
  AO22X1_HVT U25 ( .A1(n17), .A2(n28), .A3(n16), .A4(MEM_OEB_BANK2[13]), .Y(
        n180) );
  NAND4X0_HVT U26 ( .A1(ADDR[12]), .A2(n3), .A3(n12), .A4(n13), .Y(n29) );
  AO22X1_HVT U27 ( .A1(n17), .A2(n29), .A3(n16), .A4(MEM_OEB_BANK2[12]), .Y(
        n179) );
  INVX0_HVT U28 ( .A(ADDR[12]), .Y(n14) );
  AND3X1_HVT U29 ( .A1(ADDR[10]), .A2(ADDR[11]), .A3(n14), .Y(n11) );
  NAND2X0_HVT U30 ( .A1(n3), .A2(n11), .Y(n30) );
  AO22X1_HVT U31 ( .A1(n17), .A2(n30), .A3(n16), .A4(MEM_OEB_BANK2[11]), .Y(
        n178) );
  NAND4X0_HVT U32 ( .A1(ADDR[11]), .A2(n3), .A3(n14), .A4(n13), .Y(n31) );
  AO22X1_HVT U33 ( .A1(n17), .A2(n31), .A3(n16), .A4(MEM_OEB_BANK2[10]), .Y(
        n177) );
  NAND4X0_HVT U34 ( .A1(ADDR[10]), .A2(n3), .A3(n14), .A4(n12), .Y(n32) );
  AO22X1_HVT U35 ( .A1(n17), .A2(n32), .A3(n16), .A4(MEM_OEB_BANK2[9]), .Y(
        n176) );
  NAND4X0_HVT U36 ( .A1(n3), .A2(n14), .A3(n13), .A4(n12), .Y(n33) );
  AO22X1_HVT U37 ( .A1(n17), .A2(n33), .A3(n16), .A4(MEM_OEB_BANK2[8]), .Y(
        n175) );
  INVX0_HVT U38 ( .A(ADDR[13]), .Y(n7) );
  AND2X1_HVT U39 ( .A1(n7), .A2(n4), .Y(n5) );
  NAND4X0_HVT U40 ( .A1(ADDR[12]), .A2(ADDR[10]), .A3(ADDR[11]), .A4(n5), .Y(
        n34) );
  AO22X1_HVT U41 ( .A1(n17), .A2(n34), .A3(n16), .A4(MEM_OEB_BANK2[7]), .Y(
        n174) );
  NAND2X0_HVT U42 ( .A1(n9), .A2(n5), .Y(n35) );
  AO22X1_HVT U43 ( .A1(n17), .A2(n35), .A3(n16), .A4(MEM_OEB_BANK2[6]), .Y(
        n173) );
  NAND2X0_HVT U44 ( .A1(n10), .A2(n5), .Y(n36) );
  AO22X1_HVT U45 ( .A1(n17), .A2(n36), .A3(n16), .A4(MEM_OEB_BANK2[5]), .Y(
        n172) );
  NAND4X0_HVT U46 ( .A1(ADDR[12]), .A2(n5), .A3(n12), .A4(n13), .Y(n37) );
  AO22X1_HVT U47 ( .A1(n17), .A2(n37), .A3(n16), .A4(MEM_OEB_BANK2[4]), .Y(
        n171) );
  NAND2X0_HVT U48 ( .A1(n11), .A2(n5), .Y(n38) );
  AO22X1_HVT U49 ( .A1(n17), .A2(n38), .A3(n2), .A4(MEM_OEB_BANK2[3]), .Y(n170) );
  NAND4X0_HVT U50 ( .A1(ADDR[11]), .A2(n5), .A3(n14), .A4(n13), .Y(n39) );
  AO22X1_HVT U51 ( .A1(n17), .A2(n39), .A3(n2), .A4(MEM_OEB_BANK2[2]), .Y(n169) );
  NAND4X0_HVT U52 ( .A1(ADDR[10]), .A2(n5), .A3(n14), .A4(n12), .Y(n40) );
  AO22X1_HVT U53 ( .A1(n17), .A2(n40), .A3(n2), .A4(MEM_OEB_BANK2[1]), .Y(n168) );
  NAND4X0_HVT U54 ( .A1(n5), .A2(n14), .A3(n13), .A4(n12), .Y(n41) );
  AO22X1_HVT U55 ( .A1(n17), .A2(n41), .A3(n2), .A4(MEM_OEB_BANK2[0]), .Y(n167) );
  INVX0_HVT U56 ( .A(ADDR[14]), .Y(n24) );
  NAND2X0_HVT U57 ( .A1(ADDR[15]), .A2(n24), .Y(n6) );
  INVX2_HVT U58 ( .A(n6), .Y(n22) );
  NOR2X0_HVT U59 ( .A1(CSB), .A2(n7), .Y(n8) );
  NAND4X0_HVT U60 ( .A1(ADDR[12]), .A2(ADDR[10]), .A3(ADDR[11]), .A4(n8), .Y(
        n42) );
  AO22X1_HVT U61 ( .A1(n22), .A2(n42), .A3(n21), .A4(MEM_CSB_BANK3[15]), .Y(
        n166) );
  NAND2X0_HVT U62 ( .A1(n9), .A2(n8), .Y(n43) );
  AO22X1_HVT U63 ( .A1(n22), .A2(n43), .A3(n21), .A4(MEM_CSB_BANK3[14]), .Y(
        n165) );
  NAND2X0_HVT U64 ( .A1(n10), .A2(n8), .Y(n44) );
  AO22X1_HVT U65 ( .A1(n22), .A2(n44), .A3(n21), .A4(MEM_CSB_BANK3[13]), .Y(
        n164) );
  NAND4X0_HVT U66 ( .A1(ADDR[12]), .A2(n8), .A3(n12), .A4(n13), .Y(n45) );
  AO22X1_HVT U67 ( .A1(n22), .A2(n45), .A3(n21), .A4(MEM_CSB_BANK3[12]), .Y(
        n163) );
  NAND2X0_HVT U68 ( .A1(n11), .A2(n8), .Y(n46) );
  AO22X1_HVT U69 ( .A1(n22), .A2(n46), .A3(n21), .A4(MEM_CSB_BANK3[11]), .Y(
        n162) );
  NAND4X0_HVT U70 ( .A1(ADDR[11]), .A2(n8), .A3(n14), .A4(n13), .Y(n47) );
  AO22X1_HVT U71 ( .A1(n22), .A2(n47), .A3(n21), .A4(MEM_CSB_BANK3[10]), .Y(
        n161) );
  NAND4X0_HVT U72 ( .A1(ADDR[10]), .A2(n8), .A3(n14), .A4(n12), .Y(n48) );
  AO22X1_HVT U73 ( .A1(n22), .A2(n48), .A3(n21), .A4(MEM_CSB_BANK3[9]), .Y(
        n160) );
  NAND4X0_HVT U74 ( .A1(n8), .A2(n14), .A3(n13), .A4(n12), .Y(n49) );
  AO22X1_HVT U75 ( .A1(n22), .A2(n49), .A3(n21), .A4(MEM_CSB_BANK3[8]), .Y(
        n159) );
  NAND4X0_HVT U76 ( .A1(ADDR[12]), .A2(ADDR[10]), .A3(ADDR[11]), .A4(n15), .Y(
        n50) );
  AO22X1_HVT U77 ( .A1(n22), .A2(n50), .A3(n21), .A4(MEM_CSB_BANK3[7]), .Y(
        n158) );
  NAND2X0_HVT U78 ( .A1(n9), .A2(n15), .Y(n51) );
  AO22X1_HVT U79 ( .A1(n22), .A2(n51), .A3(n21), .A4(MEM_CSB_BANK3[6]), .Y(
        n157) );
  NAND2X0_HVT U80 ( .A1(n10), .A2(n15), .Y(n52) );
  AO22X1_HVT U81 ( .A1(n22), .A2(n52), .A3(n21), .A4(MEM_CSB_BANK3[5]), .Y(
        n156) );
  NAND4X0_HVT U82 ( .A1(ADDR[12]), .A2(n15), .A3(n12), .A4(n13), .Y(n53) );
  AO22X1_HVT U83 ( .A1(n22), .A2(n53), .A3(n21), .A4(MEM_CSB_BANK3[4]), .Y(
        n155) );
  NAND2X0_HVT U84 ( .A1(n11), .A2(n15), .Y(n54) );
  AO22X1_HVT U85 ( .A1(n22), .A2(n54), .A3(n6), .A4(MEM_CSB_BANK3[3]), .Y(n154) );
  NAND4X0_HVT U86 ( .A1(ADDR[11]), .A2(n15), .A3(n14), .A4(n13), .Y(n183) );
  AO22X1_HVT U87 ( .A1(n22), .A2(n183), .A3(n6), .A4(MEM_CSB_BANK3[2]), .Y(
        n153) );
  NAND4X0_HVT U88 ( .A1(ADDR[10]), .A2(n15), .A3(n14), .A4(n12), .Y(n186) );
  AO22X1_HVT U89 ( .A1(n22), .A2(n186), .A3(n6), .A4(MEM_CSB_BANK3[1]), .Y(
        n152) );
  NAND4X0_HVT U90 ( .A1(n15), .A2(n14), .A3(n13), .A4(n12), .Y(n187) );
  AO22X1_HVT U91 ( .A1(n22), .A2(n187), .A3(n6), .A4(MEM_CSB_BANK3[0]), .Y(
        n151) );
  AO22X1_HVT U92 ( .A1(n17), .A2(n42), .A3(n2), .A4(MEM_CSB_BANK2[15]), .Y(
        n150) );
  AO22X1_HVT U93 ( .A1(n17), .A2(n43), .A3(n2), .A4(MEM_CSB_BANK2[14]), .Y(
        n149) );
  AO22X1_HVT U94 ( .A1(n17), .A2(n44), .A3(n2), .A4(MEM_CSB_BANK2[13]), .Y(
        n148) );
  AO22X1_HVT U95 ( .A1(n17), .A2(n45), .A3(n2), .A4(MEM_CSB_BANK2[12]), .Y(
        n147) );
  AO22X1_HVT U96 ( .A1(n17), .A2(n46), .A3(n2), .A4(MEM_CSB_BANK2[11]), .Y(
        n146) );
  AO22X1_HVT U97 ( .A1(n17), .A2(n47), .A3(n2), .A4(MEM_CSB_BANK2[10]), .Y(
        n145) );
  AO22X1_HVT U98 ( .A1(n17), .A2(n48), .A3(n2), .A4(MEM_CSB_BANK2[9]), .Y(n144) );
  AO22X1_HVT U99 ( .A1(n17), .A2(n49), .A3(n2), .A4(MEM_CSB_BANK2[8]), .Y(n143) );
  AO22X1_HVT U100 ( .A1(n17), .A2(n50), .A3(n2), .A4(MEM_CSB_BANK2[7]), .Y(
        n142) );
  AO22X1_HVT U101 ( .A1(n17), .A2(n51), .A3(n16), .A4(MEM_CSB_BANK2[6]), .Y(
        n141) );
  AO22X1_HVT U102 ( .A1(n17), .A2(n52), .A3(n16), .A4(MEM_CSB_BANK2[5]), .Y(
        n140) );
  AO22X1_HVT U103 ( .A1(n17), .A2(n53), .A3(n2), .A4(MEM_CSB_BANK2[4]), .Y(
        n139) );
  AO22X1_HVT U104 ( .A1(n17), .A2(n54), .A3(n16), .A4(MEM_CSB_BANK2[3]), .Y(
        n138) );
  AO22X1_HVT U105 ( .A1(n17), .A2(n183), .A3(n16), .A4(MEM_CSB_BANK2[2]), .Y(
        n137) );
  AO22X1_HVT U106 ( .A1(n17), .A2(n186), .A3(n2), .A4(MEM_CSB_BANK2[1]), .Y(
        n136) );
  AO22X1_HVT U107 ( .A1(n17), .A2(n187), .A3(n16), .A4(MEM_CSB_BANK2[0]), .Y(
        n135) );
  NAND2X0_HVT U108 ( .A1(ADDR[14]), .A2(ADDR[15]), .Y(n18) );
  INVX2_HVT U109 ( .A(n18), .Y(n20) );
  INVX2_HVT U110 ( .A(n20), .Y(n19) );
  AO22X1_HVT U111 ( .A1(n20), .A2(n42), .A3(n19), .A4(MEM_CSB_BANK4[15]), .Y(
        n134) );
  AO22X1_HVT U112 ( .A1(n20), .A2(n43), .A3(n19), .A4(MEM_CSB_BANK4[14]), .Y(
        n133) );
  AO22X1_HVT U113 ( .A1(n20), .A2(n44), .A3(n19), .A4(MEM_CSB_BANK4[13]), .Y(
        n132) );
  AO22X1_HVT U114 ( .A1(n20), .A2(n45), .A3(n19), .A4(MEM_CSB_BANK4[12]), .Y(
        n131) );
  AO22X1_HVT U115 ( .A1(n20), .A2(n46), .A3(n19), .A4(MEM_CSB_BANK4[11]), .Y(
        n130) );
  AO22X1_HVT U116 ( .A1(n20), .A2(n47), .A3(n19), .A4(MEM_CSB_BANK4[10]), .Y(
        n129) );
  AO22X1_HVT U117 ( .A1(n20), .A2(n48), .A3(n19), .A4(MEM_CSB_BANK4[9]), .Y(
        n128) );
  AO22X1_HVT U118 ( .A1(n20), .A2(n49), .A3(n19), .A4(MEM_CSB_BANK4[8]), .Y(
        n127) );
  AO22X1_HVT U119 ( .A1(n20), .A2(n50), .A3(n19), .A4(MEM_CSB_BANK4[7]), .Y(
        n126) );
  AO22X1_HVT U120 ( .A1(n20), .A2(n51), .A3(n19), .A4(MEM_CSB_BANK4[6]), .Y(
        n125) );
  AO22X1_HVT U121 ( .A1(n20), .A2(n52), .A3(n19), .A4(MEM_CSB_BANK4[5]), .Y(
        n124) );
  AO22X1_HVT U122 ( .A1(n20), .A2(n53), .A3(n19), .A4(MEM_CSB_BANK4[4]), .Y(
        n123) );
  AO22X1_HVT U123 ( .A1(n20), .A2(n54), .A3(n19), .A4(MEM_CSB_BANK4[3]), .Y(
        n122) );
  AO22X1_HVT U124 ( .A1(n20), .A2(n183), .A3(n19), .A4(MEM_CSB_BANK4[2]), .Y(
        n121) );
  AO22X1_HVT U125 ( .A1(n20), .A2(n186), .A3(n19), .A4(MEM_CSB_BANK4[1]), .Y(
        n120) );
  AO22X1_HVT U126 ( .A1(n20), .A2(n187), .A3(n19), .A4(MEM_CSB_BANK4[0]), .Y(
        n119) );
  AO22X1_HVT U127 ( .A1(n20), .A2(n26), .A3(n19), .A4(MEM_OEB_BANK4[15]), .Y(
        n118) );
  AO22X1_HVT U128 ( .A1(n20), .A2(n27), .A3(n19), .A4(MEM_OEB_BANK4[14]), .Y(
        n117) );
  AO22X1_HVT U129 ( .A1(n20), .A2(n28), .A3(n19), .A4(MEM_OEB_BANK4[13]), .Y(
        n116) );
  AO22X1_HVT U130 ( .A1(n20), .A2(n29), .A3(n19), .A4(MEM_OEB_BANK4[12]), .Y(
        n115) );
  AO22X1_HVT U131 ( .A1(n20), .A2(n30), .A3(n19), .A4(MEM_OEB_BANK4[11]), .Y(
        n114) );
  AO22X1_HVT U132 ( .A1(n20), .A2(n31), .A3(n19), .A4(MEM_OEB_BANK4[10]), .Y(
        n113) );
  AO22X1_HVT U133 ( .A1(n20), .A2(n32), .A3(n19), .A4(MEM_OEB_BANK4[9]), .Y(
        n112) );
  AO22X1_HVT U134 ( .A1(n20), .A2(n33), .A3(n18), .A4(MEM_OEB_BANK4[8]), .Y(
        n111) );
  AO22X1_HVT U135 ( .A1(n20), .A2(n34), .A3(n18), .A4(MEM_OEB_BANK4[7]), .Y(
        n110) );
  AO22X1_HVT U136 ( .A1(n20), .A2(n35), .A3(n19), .A4(MEM_OEB_BANK4[6]), .Y(
        n109) );
  AO22X1_HVT U137 ( .A1(n20), .A2(n36), .A3(n19), .A4(MEM_OEB_BANK4[5]), .Y(
        n108) );
  AO22X1_HVT U138 ( .A1(n20), .A2(n37), .A3(n18), .A4(MEM_OEB_BANK4[4]), .Y(
        n107) );
  AO22X1_HVT U139 ( .A1(n20), .A2(n38), .A3(n19), .A4(MEM_OEB_BANK4[3]), .Y(
        n106) );
  AO22X1_HVT U140 ( .A1(n20), .A2(n39), .A3(n19), .A4(MEM_OEB_BANK4[2]), .Y(
        n105) );
  AO22X1_HVT U141 ( .A1(n20), .A2(n40), .A3(n18), .A4(MEM_OEB_BANK4[1]), .Y(
        n104) );
  AO22X1_HVT U142 ( .A1(n20), .A2(n41), .A3(n19), .A4(MEM_OEB_BANK4[0]), .Y(
        n103) );
  AO22X1_HVT U143 ( .A1(n22), .A2(n26), .A3(n6), .A4(MEM_OEB_BANK3[15]), .Y(
        n102) );
  AO22X1_HVT U144 ( .A1(n22), .A2(n27), .A3(n6), .A4(MEM_OEB_BANK3[14]), .Y(
        n101) );
  AO22X1_HVT U145 ( .A1(n22), .A2(n28), .A3(n6), .A4(MEM_OEB_BANK3[13]), .Y(
        n100) );
  AO22X1_HVT U146 ( .A1(n22), .A2(n29), .A3(n6), .A4(MEM_OEB_BANK3[12]), .Y(
        n99) );
  AO22X1_HVT U147 ( .A1(n22), .A2(n30), .A3(n6), .A4(MEM_OEB_BANK3[11]), .Y(
        n98) );
  AO22X1_HVT U148 ( .A1(n22), .A2(n31), .A3(n6), .A4(MEM_OEB_BANK3[10]), .Y(
        n97) );
  AO22X1_HVT U149 ( .A1(n22), .A2(n32), .A3(n6), .A4(MEM_OEB_BANK3[9]), .Y(n96) );
  AO22X1_HVT U150 ( .A1(n22), .A2(n33), .A3(n6), .A4(MEM_OEB_BANK3[8]), .Y(n95) );
  AO22X1_HVT U151 ( .A1(n22), .A2(n34), .A3(n6), .A4(MEM_OEB_BANK3[7]), .Y(n94) );
  AO22X1_HVT U152 ( .A1(n22), .A2(n35), .A3(n21), .A4(MEM_OEB_BANK3[6]), .Y(
        n93) );
  AO22X1_HVT U153 ( .A1(n22), .A2(n36), .A3(n21), .A4(MEM_OEB_BANK3[5]), .Y(
        n92) );
  AO22X1_HVT U154 ( .A1(n22), .A2(n37), .A3(n6), .A4(MEM_OEB_BANK3[4]), .Y(n91) );
  AO22X1_HVT U155 ( .A1(n22), .A2(n38), .A3(n21), .A4(MEM_OEB_BANK3[3]), .Y(
        n90) );
  AO22X1_HVT U156 ( .A1(n22), .A2(n39), .A3(n21), .A4(MEM_OEB_BANK3[2]), .Y(
        n89) );
  AO22X1_HVT U157 ( .A1(n22), .A2(n40), .A3(n6), .A4(MEM_OEB_BANK3[1]), .Y(n88) );
  AO22X1_HVT U158 ( .A1(n22), .A2(n41), .A3(n21), .A4(MEM_OEB_BANK3[0]), .Y(
        n87) );
  NAND2X0_HVT U159 ( .A1(n24), .A2(n23), .Y(n25) );
  NBUFFX2_HVT U160 ( .A(n188), .Y(n184) );
  AO22X1_HVT U161 ( .A1(n188), .A2(n26), .A3(n185), .A4(MEM_OEB_BANK1[15]), 
        .Y(n86) );
  AO22X1_HVT U162 ( .A1(n188), .A2(n27), .A3(n185), .A4(MEM_OEB_BANK1[14]), 
        .Y(n85) );
  AO22X1_HVT U163 ( .A1(n188), .A2(n28), .A3(n25), .A4(MEM_OEB_BANK1[13]), .Y(
        n84) );
  AO22X1_HVT U164 ( .A1(n188), .A2(n29), .A3(n25), .A4(MEM_OEB_BANK1[12]), .Y(
        n83) );
  AO22X1_HVT U165 ( .A1(n188), .A2(n30), .A3(n25), .A4(MEM_OEB_BANK1[11]), .Y(
        n82) );
  AO22X1_HVT U166 ( .A1(n188), .A2(n31), .A3(n25), .A4(MEM_OEB_BANK1[10]), .Y(
        n81) );
  AO22X1_HVT U167 ( .A1(n188), .A2(n32), .A3(n25), .A4(MEM_OEB_BANK1[9]), .Y(
        n80) );
  AO22X1_HVT U168 ( .A1(n188), .A2(n33), .A3(n25), .A4(MEM_OEB_BANK1[8]), .Y(
        n79) );
  AO22X1_HVT U169 ( .A1(n188), .A2(n34), .A3(n25), .A4(MEM_OEB_BANK1[7]), .Y(
        n78) );
  AO22X1_HVT U170 ( .A1(n184), .A2(n35), .A3(n25), .A4(MEM_OEB_BANK1[6]), .Y(
        n77) );
  AO22X1_HVT U171 ( .A1(n188), .A2(n36), .A3(n25), .A4(MEM_OEB_BANK1[5]), .Y(
        n76) );
  AO22X1_HVT U172 ( .A1(n188), .A2(n37), .A3(n25), .A4(MEM_OEB_BANK1[4]), .Y(
        n75) );
  AO22X1_HVT U173 ( .A1(n184), .A2(n38), .A3(n185), .A4(MEM_OEB_BANK1[3]), .Y(
        n74) );
  AO22X1_HVT U174 ( .A1(n184), .A2(n39), .A3(n185), .A4(MEM_OEB_BANK1[2]), .Y(
        n73) );
  AO22X1_HVT U175 ( .A1(n184), .A2(n40), .A3(n185), .A4(MEM_OEB_BANK1[1]), .Y(
        n72) );
  AO22X1_HVT U176 ( .A1(n184), .A2(n41), .A3(n185), .A4(MEM_OEB_BANK1[0]), .Y(
        n71) );
  AO22X1_HVT U177 ( .A1(n184), .A2(n42), .A3(n185), .A4(MEM_CSB_BANK1[15]), 
        .Y(n70) );
  AO22X1_HVT U178 ( .A1(n184), .A2(n43), .A3(n185), .A4(MEM_CSB_BANK1[14]), 
        .Y(n69) );
  AO22X1_HVT U179 ( .A1(n184), .A2(n44), .A3(n185), .A4(MEM_CSB_BANK1[13]), 
        .Y(n68) );
  AO22X1_HVT U180 ( .A1(n184), .A2(n45), .A3(n185), .A4(MEM_CSB_BANK1[12]), 
        .Y(n67) );
  AO22X1_HVT U181 ( .A1(n184), .A2(n46), .A3(n185), .A4(MEM_CSB_BANK1[11]), 
        .Y(n66) );
  AO22X1_HVT U182 ( .A1(n184), .A2(n47), .A3(n185), .A4(MEM_CSB_BANK1[10]), 
        .Y(n65) );
  AO22X1_HVT U183 ( .A1(n184), .A2(n48), .A3(n185), .A4(MEM_CSB_BANK1[9]), .Y(
        n64) );
  AO22X1_HVT U184 ( .A1(n184), .A2(n49), .A3(n185), .A4(MEM_CSB_BANK1[8]), .Y(
        n63) );
  AO22X1_HVT U185 ( .A1(n188), .A2(n50), .A3(n185), .A4(MEM_CSB_BANK1[7]), .Y(
        n62) );
  AO22X1_HVT U186 ( .A1(n188), .A2(n51), .A3(n25), .A4(MEM_CSB_BANK1[6]), .Y(
        n61) );
  AO22X1_HVT U187 ( .A1(n188), .A2(n52), .A3(n25), .A4(MEM_CSB_BANK1[5]), .Y(
        n60) );
  AO22X1_HVT U188 ( .A1(n184), .A2(n53), .A3(n185), .A4(MEM_CSB_BANK1[4]), .Y(
        n59) );
  AO22X1_HVT U189 ( .A1(n188), .A2(n54), .A3(n25), .A4(MEM_CSB_BANK1[3]), .Y(
        n58) );
  AO22X1_HVT U190 ( .A1(n184), .A2(n183), .A3(n25), .A4(MEM_CSB_BANK1[2]), .Y(
        n57) );
  AO22X1_HVT U191 ( .A1(n188), .A2(n186), .A3(n185), .A4(MEM_CSB_BANK1[1]), 
        .Y(n56) );
  AO22X1_HVT U192 ( .A1(n188), .A2(n187), .A3(n25), .A4(MEM_CSB_BANK1[0]), .Y(
        n55) );
endmodule


module SRAM64KB_3 ( ODATA, MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, 
        MEM_IDATA, MEM_ODATA_SELECT );
  output [7:0] ODATA;
  input [9:0] MEM_ADDR;
  input [15:0] MEM_OEB;
  input [15:0] MEM_CSB;
  input [7:0] MEM_IDATA;
  input [3:0] MEM_ODATA_SELECT;
  input MEM_CE, MEM_WEB;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105;
  wire   [127:0] TMP_ODATA;

  SRAM1RW1024x8 \genblk1[0].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[7:0]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[0]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[0]) );
  SRAM1RW1024x8 \genblk1[1].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[15:8]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[1]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[1]) );
  SRAM1RW1024x8 \genblk1[2].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[23:16]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[2]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[2]) );
  SRAM1RW1024x8 \genblk1[3].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[31:24]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[3]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[3]) );
  SRAM1RW1024x8 \genblk1[4].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[39:32]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[4]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[4]) );
  SRAM1RW1024x8 \genblk1[5].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[47:40]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[5]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[5]) );
  SRAM1RW1024x8 \genblk1[6].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[55:48]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[6]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[6]) );
  SRAM1RW1024x8 \genblk1[7].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[63:56]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[7]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[7]) );
  SRAM1RW1024x8 \genblk1[8].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[71:64]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[8]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[8]) );
  SRAM1RW1024x8 \genblk1[9].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[79:72]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[9]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[9]) );
  SRAM1RW1024x8 \genblk1[10].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[87:80]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[10]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[10]) );
  SRAM1RW1024x8 \genblk1[11].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[95:88]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[11]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[11]) );
  SRAM1RW1024x8 \genblk1[12].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[103:96]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[12]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[12]) );
  SRAM1RW1024x8 \genblk1[13].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[111:104]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[13]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[13]) );
  SRAM1RW1024x8 \genblk1[14].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[119:112]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[14]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[14]) );
  SRAM1RW1024x8 \genblk1[15].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[127:120]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[15]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[15]) );
  NOR3X0_HVT U1 ( .A1(MEM_OEB[13]), .A2(n3), .A3(n13), .Y(n86) );
  INVX0_HVT U2 ( .A(MEM_ODATA_SELECT[3]), .Y(n8) );
  OR2X1_HVT U3 ( .A1(n8), .A2(MEM_ODATA_SELECT[0]), .Y(n2) );
  INVX0_HVT U4 ( .A(MEM_ODATA_SELECT[1]), .Y(n1) );
  OR2X1_HVT U5 ( .A1(n1), .A2(MEM_ODATA_SELECT[2]), .Y(n9) );
  NOR3X0_HVT U6 ( .A1(MEM_OEB[10]), .A2(n2), .A3(n9), .Y(n81) );
  NAND2X0_HVT U7 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .Y(n3)
         );
  NOR3X0_HVT U8 ( .A1(MEM_OEB[11]), .A2(n3), .A3(n9), .Y(n80) );
  AO22X1_HVT U9 ( .A1(n81), .A2(TMP_ODATA[80]), .A3(n80), .A4(TMP_ODATA[88]), 
        .Y(n7) );
  NOR4X1_HVT U10 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[8]), .A4(n2), .Y(n83) );
  NOR4X1_HVT U11 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[9]), .A4(n3), .Y(n82) );
  AO22X1_HVT U12 ( .A1(n83), .A2(TMP_ODATA[64]), .A3(n82), .A4(TMP_ODATA[72]), 
        .Y(n6) );
  NAND2X0_HVT U13 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n11) );
  NOR3X0_HVT U14 ( .A1(MEM_OEB[14]), .A2(n2), .A3(n11), .Y(n85) );
  NOR3X0_HVT U15 ( .A1(MEM_OEB[15]), .A2(n3), .A3(n11), .Y(n84) );
  AO22X1_HVT U16 ( .A1(n85), .A2(TMP_ODATA[112]), .A3(n84), .A4(TMP_ODATA[120]), .Y(n5) );
  NAND2X0_HVT U17 ( .A1(MEM_ODATA_SELECT[2]), .A2(n1), .Y(n13) );
  NOR3X0_HVT U18 ( .A1(MEM_OEB[12]), .A2(n2), .A3(n13), .Y(n87) );
  AO22X1_HVT U19 ( .A1(n87), .A2(TMP_ODATA[96]), .A3(n86), .A4(TMP_ODATA[104]), 
        .Y(n4) );
  NOR4X1_HVT U20 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .Y(n19) );
  NOR4X1_HVT U21 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[2]), .A4(n9), .Y(n93) );
  NAND2X0_HVT U22 ( .A1(MEM_ODATA_SELECT[0]), .A2(n8), .Y(n12) );
  NOR3X0_HVT U23 ( .A1(MEM_OEB[3]), .A2(n9), .A3(n12), .Y(n92) );
  AO22X1_HVT U24 ( .A1(n93), .A2(TMP_ODATA[16]), .A3(n92), .A4(TMP_ODATA[24]), 
        .Y(n17) );
  OR2X1_HVT U25 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n10)
         );
  NOR4X1_HVT U26 ( .A1(MEM_OEB[0]), .A2(MEM_ODATA_SELECT[0]), .A3(
        MEM_ODATA_SELECT[3]), .A4(n10), .Y(n95) );
  NOR4X1_HVT U27 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[1]), .A4(n12), .Y(n94) );
  AO22X1_HVT U28 ( .A1(n95), .A2(TMP_ODATA[0]), .A3(n94), .A4(TMP_ODATA[8]), 
        .Y(n16) );
  NOR4X1_HVT U29 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[6]), .A4(n11), .Y(n97) );
  NOR3X0_HVT U30 ( .A1(MEM_OEB[7]), .A2(n11), .A3(n12), .Y(n96) );
  AO22X1_HVT U31 ( .A1(n97), .A2(TMP_ODATA[48]), .A3(n96), .A4(TMP_ODATA[56]), 
        .Y(n15) );
  NOR4X1_HVT U32 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[4]), .A4(n13), .Y(n99) );
  NOR3X0_HVT U33 ( .A1(MEM_OEB[5]), .A2(n13), .A3(n12), .Y(n98) );
  AO22X1_HVT U34 ( .A1(n99), .A2(TMP_ODATA[32]), .A3(n98), .A4(TMP_ODATA[40]), 
        .Y(n14) );
  NOR4X1_HVT U35 ( .A1(n17), .A2(n16), .A3(n15), .A4(n14), .Y(n18) );
  NAND2X0_HVT U36 ( .A1(n19), .A2(n18), .Y(ODATA[0]) );
  AO22X1_HVT U37 ( .A1(n81), .A2(TMP_ODATA[81]), .A3(n80), .A4(TMP_ODATA[89]), 
        .Y(n23) );
  AO22X1_HVT U38 ( .A1(n83), .A2(TMP_ODATA[65]), .A3(n82), .A4(TMP_ODATA[73]), 
        .Y(n22) );
  AO22X1_HVT U39 ( .A1(n85), .A2(TMP_ODATA[113]), .A3(n84), .A4(TMP_ODATA[121]), .Y(n21) );
  AO22X1_HVT U40 ( .A1(n87), .A2(TMP_ODATA[97]), .A3(n86), .A4(TMP_ODATA[105]), 
        .Y(n20) );
  NOR4X1_HVT U41 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .Y(n29) );
  AO22X1_HVT U42 ( .A1(n93), .A2(TMP_ODATA[17]), .A3(n92), .A4(TMP_ODATA[25]), 
        .Y(n27) );
  AO22X1_HVT U43 ( .A1(n95), .A2(TMP_ODATA[1]), .A3(n94), .A4(TMP_ODATA[9]), 
        .Y(n26) );
  AO22X1_HVT U44 ( .A1(n97), .A2(TMP_ODATA[49]), .A3(n96), .A4(TMP_ODATA[57]), 
        .Y(n25) );
  AO22X1_HVT U45 ( .A1(n99), .A2(TMP_ODATA[33]), .A3(n98), .A4(TMP_ODATA[41]), 
        .Y(n24) );
  NOR4X1_HVT U46 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .Y(n28) );
  NAND2X0_HVT U47 ( .A1(n29), .A2(n28), .Y(ODATA[1]) );
  AO22X1_HVT U48 ( .A1(n81), .A2(TMP_ODATA[82]), .A3(n80), .A4(TMP_ODATA[90]), 
        .Y(n33) );
  AO22X1_HVT U49 ( .A1(n83), .A2(TMP_ODATA[66]), .A3(n82), .A4(TMP_ODATA[74]), 
        .Y(n32) );
  AO22X1_HVT U50 ( .A1(n85), .A2(TMP_ODATA[114]), .A3(n84), .A4(TMP_ODATA[122]), .Y(n31) );
  AO22X1_HVT U51 ( .A1(n87), .A2(TMP_ODATA[98]), .A3(n86), .A4(TMP_ODATA[106]), 
        .Y(n30) );
  NOR4X1_HVT U52 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Y(n39) );
  AO22X1_HVT U53 ( .A1(n93), .A2(TMP_ODATA[18]), .A3(n92), .A4(TMP_ODATA[26]), 
        .Y(n37) );
  AO22X1_HVT U54 ( .A1(n95), .A2(TMP_ODATA[2]), .A3(n94), .A4(TMP_ODATA[10]), 
        .Y(n36) );
  AO22X1_HVT U55 ( .A1(n97), .A2(TMP_ODATA[50]), .A3(n96), .A4(TMP_ODATA[58]), 
        .Y(n35) );
  AO22X1_HVT U56 ( .A1(n99), .A2(TMP_ODATA[34]), .A3(n98), .A4(TMP_ODATA[42]), 
        .Y(n34) );
  NOR4X1_HVT U57 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .Y(n38) );
  NAND2X0_HVT U58 ( .A1(n39), .A2(n38), .Y(ODATA[2]) );
  AO22X1_HVT U59 ( .A1(n81), .A2(TMP_ODATA[83]), .A3(n80), .A4(TMP_ODATA[91]), 
        .Y(n43) );
  AO22X1_HVT U60 ( .A1(n83), .A2(TMP_ODATA[67]), .A3(n82), .A4(TMP_ODATA[75]), 
        .Y(n42) );
  AO22X1_HVT U61 ( .A1(n85), .A2(TMP_ODATA[115]), .A3(n84), .A4(TMP_ODATA[123]), .Y(n41) );
  AO22X1_HVT U62 ( .A1(n87), .A2(TMP_ODATA[99]), .A3(n86), .A4(TMP_ODATA[107]), 
        .Y(n40) );
  NOR4X1_HVT U63 ( .A1(n43), .A2(n42), .A3(n41), .A4(n40), .Y(n49) );
  AO22X1_HVT U64 ( .A1(n93), .A2(TMP_ODATA[19]), .A3(n92), .A4(TMP_ODATA[27]), 
        .Y(n47) );
  AO22X1_HVT U65 ( .A1(n95), .A2(TMP_ODATA[3]), .A3(n94), .A4(TMP_ODATA[11]), 
        .Y(n46) );
  AO22X1_HVT U66 ( .A1(n97), .A2(TMP_ODATA[51]), .A3(n96), .A4(TMP_ODATA[59]), 
        .Y(n45) );
  AO22X1_HVT U67 ( .A1(n99), .A2(TMP_ODATA[35]), .A3(n98), .A4(TMP_ODATA[43]), 
        .Y(n44) );
  NOR4X1_HVT U68 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .Y(n48) );
  NAND2X0_HVT U69 ( .A1(n49), .A2(n48), .Y(ODATA[3]) );
  AO22X1_HVT U70 ( .A1(n81), .A2(TMP_ODATA[84]), .A3(n80), .A4(TMP_ODATA[92]), 
        .Y(n53) );
  AO22X1_HVT U71 ( .A1(n83), .A2(TMP_ODATA[68]), .A3(n82), .A4(TMP_ODATA[76]), 
        .Y(n52) );
  AO22X1_HVT U72 ( .A1(n85), .A2(TMP_ODATA[116]), .A3(n84), .A4(TMP_ODATA[124]), .Y(n51) );
  AO22X1_HVT U73 ( .A1(n87), .A2(TMP_ODATA[100]), .A3(n86), .A4(TMP_ODATA[108]), .Y(n50) );
  NOR4X1_HVT U74 ( .A1(n53), .A2(n52), .A3(n51), .A4(n50), .Y(n59) );
  AO22X1_HVT U75 ( .A1(n93), .A2(TMP_ODATA[20]), .A3(n92), .A4(TMP_ODATA[28]), 
        .Y(n57) );
  AO22X1_HVT U76 ( .A1(n95), .A2(TMP_ODATA[4]), .A3(n94), .A4(TMP_ODATA[12]), 
        .Y(n56) );
  AO22X1_HVT U77 ( .A1(n97), .A2(TMP_ODATA[52]), .A3(n96), .A4(TMP_ODATA[60]), 
        .Y(n55) );
  AO22X1_HVT U78 ( .A1(n99), .A2(TMP_ODATA[36]), .A3(n98), .A4(TMP_ODATA[44]), 
        .Y(n54) );
  NOR4X1_HVT U79 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(n58) );
  NAND2X0_HVT U80 ( .A1(n59), .A2(n58), .Y(ODATA[4]) );
  AO22X1_HVT U81 ( .A1(n81), .A2(TMP_ODATA[85]), .A3(n80), .A4(TMP_ODATA[93]), 
        .Y(n63) );
  AO22X1_HVT U82 ( .A1(n83), .A2(TMP_ODATA[69]), .A3(n82), .A4(TMP_ODATA[77]), 
        .Y(n62) );
  AO22X1_HVT U83 ( .A1(n85), .A2(TMP_ODATA[117]), .A3(n84), .A4(TMP_ODATA[125]), .Y(n61) );
  AO22X1_HVT U84 ( .A1(n87), .A2(TMP_ODATA[101]), .A3(n86), .A4(TMP_ODATA[109]), .Y(n60) );
  NOR4X1_HVT U85 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .Y(n69) );
  AO22X1_HVT U86 ( .A1(n93), .A2(TMP_ODATA[21]), .A3(n92), .A4(TMP_ODATA[29]), 
        .Y(n67) );
  AO22X1_HVT U87 ( .A1(n95), .A2(TMP_ODATA[5]), .A3(n94), .A4(TMP_ODATA[13]), 
        .Y(n66) );
  AO22X1_HVT U88 ( .A1(n97), .A2(TMP_ODATA[53]), .A3(n96), .A4(TMP_ODATA[61]), 
        .Y(n65) );
  AO22X1_HVT U89 ( .A1(n99), .A2(TMP_ODATA[37]), .A3(n98), .A4(TMP_ODATA[45]), 
        .Y(n64) );
  NOR4X1_HVT U90 ( .A1(n67), .A2(n66), .A3(n65), .A4(n64), .Y(n68) );
  NAND2X0_HVT U91 ( .A1(n69), .A2(n68), .Y(ODATA[5]) );
  AO22X1_HVT U92 ( .A1(n81), .A2(TMP_ODATA[86]), .A3(n80), .A4(TMP_ODATA[94]), 
        .Y(n73) );
  AO22X1_HVT U93 ( .A1(n83), .A2(TMP_ODATA[70]), .A3(n82), .A4(TMP_ODATA[78]), 
        .Y(n72) );
  AO22X1_HVT U94 ( .A1(n85), .A2(TMP_ODATA[118]), .A3(n84), .A4(TMP_ODATA[126]), .Y(n71) );
  AO22X1_HVT U95 ( .A1(n87), .A2(TMP_ODATA[102]), .A3(n86), .A4(TMP_ODATA[110]), .Y(n70) );
  NOR4X1_HVT U96 ( .A1(n73), .A2(n72), .A3(n71), .A4(n70), .Y(n79) );
  AO22X1_HVT U97 ( .A1(n93), .A2(TMP_ODATA[22]), .A3(n92), .A4(TMP_ODATA[30]), 
        .Y(n77) );
  AO22X1_HVT U98 ( .A1(n95), .A2(TMP_ODATA[6]), .A3(n94), .A4(TMP_ODATA[14]), 
        .Y(n76) );
  AO22X1_HVT U99 ( .A1(n97), .A2(TMP_ODATA[54]), .A3(n96), .A4(TMP_ODATA[62]), 
        .Y(n75) );
  AO22X1_HVT U100 ( .A1(n99), .A2(TMP_ODATA[38]), .A3(n98), .A4(TMP_ODATA[46]), 
        .Y(n74) );
  NOR4X1_HVT U101 ( .A1(n77), .A2(n76), .A3(n75), .A4(n74), .Y(n78) );
  NAND2X0_HVT U102 ( .A1(n79), .A2(n78), .Y(ODATA[6]) );
  AO22X1_HVT U103 ( .A1(n81), .A2(TMP_ODATA[87]), .A3(n80), .A4(TMP_ODATA[95]), 
        .Y(n91) );
  AO22X1_HVT U104 ( .A1(n83), .A2(TMP_ODATA[71]), .A3(n82), .A4(TMP_ODATA[79]), 
        .Y(n90) );
  AO22X1_HVT U105 ( .A1(n85), .A2(TMP_ODATA[119]), .A3(n84), .A4(
        TMP_ODATA[127]), .Y(n89) );
  AO22X1_HVT U106 ( .A1(n87), .A2(TMP_ODATA[103]), .A3(n86), .A4(
        TMP_ODATA[111]), .Y(n88) );
  NOR4X1_HVT U107 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .Y(n105) );
  AO22X1_HVT U108 ( .A1(n93), .A2(TMP_ODATA[23]), .A3(n92), .A4(TMP_ODATA[31]), 
        .Y(n103) );
  AO22X1_HVT U109 ( .A1(n95), .A2(TMP_ODATA[7]), .A3(n94), .A4(TMP_ODATA[15]), 
        .Y(n102) );
  AO22X1_HVT U110 ( .A1(n97), .A2(TMP_ODATA[55]), .A3(n96), .A4(TMP_ODATA[63]), 
        .Y(n101) );
  AO22X1_HVT U111 ( .A1(n99), .A2(TMP_ODATA[39]), .A3(n98), .A4(TMP_ODATA[47]), 
        .Y(n100) );
  NOR4X1_HVT U112 ( .A1(n103), .A2(n102), .A3(n101), .A4(n100), .Y(n104) );
  NAND2X0_HVT U113 ( .A1(n105), .A2(n104), .Y(ODATA[7]) );
endmodule


module SRAM64KB_0 ( ODATA, MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, 
        MEM_IDATA, MEM_ODATA_SELECT );
  output [7:0] ODATA;
  input [9:0] MEM_ADDR;
  input [15:0] MEM_OEB;
  input [15:0] MEM_CSB;
  input [7:0] MEM_IDATA;
  input [3:0] MEM_ODATA_SELECT;
  input MEM_CE, MEM_WEB;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105;
  wire   [127:0] TMP_ODATA;

  SRAM1RW1024x8 \genblk1[0].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[7:0]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[0]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[0]) );
  SRAM1RW1024x8 \genblk1[1].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[15:8]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[1]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[1]) );
  SRAM1RW1024x8 \genblk1[2].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[23:16]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[2]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[2]) );
  SRAM1RW1024x8 \genblk1[3].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[31:24]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[3]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[3]) );
  SRAM1RW1024x8 \genblk1[4].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[39:32]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[4]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[4]) );
  SRAM1RW1024x8 \genblk1[5].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[47:40]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[5]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[5]) );
  SRAM1RW1024x8 \genblk1[6].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[55:48]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[6]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[6]) );
  SRAM1RW1024x8 \genblk1[7].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[63:56]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[7]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[7]) );
  SRAM1RW1024x8 \genblk1[8].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[71:64]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[8]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[8]) );
  SRAM1RW1024x8 \genblk1[9].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[79:72]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[9]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[9]) );
  SRAM1RW1024x8 \genblk1[10].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[87:80]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[10]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[10]) );
  SRAM1RW1024x8 \genblk1[11].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[95:88]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[11]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[11]) );
  SRAM1RW1024x8 \genblk1[12].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[103:96]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[12]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[12]) );
  SRAM1RW1024x8 \genblk1[13].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[111:104]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[13]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[13]) );
  SRAM1RW1024x8 \genblk1[14].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[119:112]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[14]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[14]) );
  SRAM1RW1024x8 \genblk1[15].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[127:120]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[15]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[15]) );
  INVX0_HVT U1 ( .A(MEM_ODATA_SELECT[1]), .Y(n1) );
  OR2X1_HVT U2 ( .A1(n1), .A2(MEM_ODATA_SELECT[2]), .Y(n9) );
  NOR3X0_HVT U3 ( .A1(MEM_OEB[5]), .A2(n13), .A3(n12), .Y(n98) );
  NOR3X0_HVT U4 ( .A1(MEM_OEB[14]), .A2(n2), .A3(n11), .Y(n85) );
  INVX0_HVT U5 ( .A(MEM_ODATA_SELECT[3]), .Y(n8) );
  OR2X1_HVT U6 ( .A1(n8), .A2(MEM_ODATA_SELECT[0]), .Y(n2) );
  NOR3X0_HVT U7 ( .A1(MEM_OEB[10]), .A2(n2), .A3(n9), .Y(n81) );
  NAND2X0_HVT U8 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .Y(n3)
         );
  NOR3X0_HVT U9 ( .A1(MEM_OEB[11]), .A2(n3), .A3(n9), .Y(n80) );
  AO22X1_HVT U10 ( .A1(n81), .A2(TMP_ODATA[80]), .A3(n80), .A4(TMP_ODATA[88]), 
        .Y(n7) );
  NOR4X1_HVT U11 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[8]), .A4(n2), .Y(n83) );
  NOR4X1_HVT U12 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[9]), .A4(n3), .Y(n82) );
  AO22X1_HVT U13 ( .A1(n83), .A2(TMP_ODATA[64]), .A3(n82), .A4(TMP_ODATA[72]), 
        .Y(n6) );
  NAND2X0_HVT U14 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n11) );
  NOR3X0_HVT U15 ( .A1(MEM_OEB[15]), .A2(n3), .A3(n11), .Y(n84) );
  AO22X1_HVT U16 ( .A1(n85), .A2(TMP_ODATA[112]), .A3(n84), .A4(TMP_ODATA[120]), .Y(n5) );
  NAND2X0_HVT U17 ( .A1(MEM_ODATA_SELECT[2]), .A2(n1), .Y(n13) );
  NOR3X0_HVT U18 ( .A1(MEM_OEB[12]), .A2(n2), .A3(n13), .Y(n87) );
  NOR3X0_HVT U19 ( .A1(MEM_OEB[13]), .A2(n3), .A3(n13), .Y(n86) );
  AO22X1_HVT U20 ( .A1(n87), .A2(TMP_ODATA[96]), .A3(n86), .A4(TMP_ODATA[104]), 
        .Y(n4) );
  NOR4X1_HVT U21 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .Y(n19) );
  NOR4X1_HVT U22 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[2]), .A4(n9), .Y(n93) );
  NAND2X0_HVT U23 ( .A1(MEM_ODATA_SELECT[0]), .A2(n8), .Y(n12) );
  NOR3X0_HVT U24 ( .A1(MEM_OEB[3]), .A2(n9), .A3(n12), .Y(n92) );
  AO22X1_HVT U25 ( .A1(n93), .A2(TMP_ODATA[16]), .A3(n92), .A4(TMP_ODATA[24]), 
        .Y(n17) );
  OR2X1_HVT U26 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n10)
         );
  NOR4X1_HVT U27 ( .A1(MEM_OEB[0]), .A2(MEM_ODATA_SELECT[0]), .A3(
        MEM_ODATA_SELECT[3]), .A4(n10), .Y(n95) );
  NOR4X1_HVT U28 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[1]), .A4(n12), .Y(n94) );
  AO22X1_HVT U29 ( .A1(n95), .A2(TMP_ODATA[0]), .A3(n94), .A4(TMP_ODATA[8]), 
        .Y(n16) );
  NOR4X1_HVT U30 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[6]), .A4(n11), .Y(n97) );
  NOR3X0_HVT U31 ( .A1(MEM_OEB[7]), .A2(n11), .A3(n12), .Y(n96) );
  AO22X1_HVT U32 ( .A1(n97), .A2(TMP_ODATA[48]), .A3(n96), .A4(TMP_ODATA[56]), 
        .Y(n15) );
  NOR4X1_HVT U33 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[4]), .A4(n13), .Y(n99) );
  AO22X1_HVT U34 ( .A1(n99), .A2(TMP_ODATA[32]), .A3(n98), .A4(TMP_ODATA[40]), 
        .Y(n14) );
  NOR4X1_HVT U35 ( .A1(n17), .A2(n16), .A3(n15), .A4(n14), .Y(n18) );
  NAND2X0_HVT U36 ( .A1(n19), .A2(n18), .Y(ODATA[0]) );
  AO22X1_HVT U37 ( .A1(n81), .A2(TMP_ODATA[81]), .A3(n80), .A4(TMP_ODATA[89]), 
        .Y(n23) );
  AO22X1_HVT U38 ( .A1(n83), .A2(TMP_ODATA[65]), .A3(n82), .A4(TMP_ODATA[73]), 
        .Y(n22) );
  AO22X1_HVT U39 ( .A1(n85), .A2(TMP_ODATA[113]), .A3(n84), .A4(TMP_ODATA[121]), .Y(n21) );
  AO22X1_HVT U40 ( .A1(n87), .A2(TMP_ODATA[97]), .A3(n86), .A4(TMP_ODATA[105]), 
        .Y(n20) );
  NOR4X1_HVT U41 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .Y(n29) );
  AO22X1_HVT U42 ( .A1(n93), .A2(TMP_ODATA[17]), .A3(n92), .A4(TMP_ODATA[25]), 
        .Y(n27) );
  AO22X1_HVT U43 ( .A1(n95), .A2(TMP_ODATA[1]), .A3(n94), .A4(TMP_ODATA[9]), 
        .Y(n26) );
  AO22X1_HVT U44 ( .A1(n97), .A2(TMP_ODATA[49]), .A3(n96), .A4(TMP_ODATA[57]), 
        .Y(n25) );
  AO22X1_HVT U45 ( .A1(n99), .A2(TMP_ODATA[33]), .A3(n98), .A4(TMP_ODATA[41]), 
        .Y(n24) );
  NOR4X1_HVT U46 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .Y(n28) );
  NAND2X0_HVT U47 ( .A1(n29), .A2(n28), .Y(ODATA[1]) );
  AO22X1_HVT U48 ( .A1(n81), .A2(TMP_ODATA[82]), .A3(n80), .A4(TMP_ODATA[90]), 
        .Y(n33) );
  AO22X1_HVT U49 ( .A1(n83), .A2(TMP_ODATA[66]), .A3(n82), .A4(TMP_ODATA[74]), 
        .Y(n32) );
  AO22X1_HVT U50 ( .A1(n85), .A2(TMP_ODATA[114]), .A3(n84), .A4(TMP_ODATA[122]), .Y(n31) );
  AO22X1_HVT U51 ( .A1(n87), .A2(TMP_ODATA[98]), .A3(n86), .A4(TMP_ODATA[106]), 
        .Y(n30) );
  NOR4X1_HVT U52 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Y(n39) );
  AO22X1_HVT U53 ( .A1(n93), .A2(TMP_ODATA[18]), .A3(n92), .A4(TMP_ODATA[26]), 
        .Y(n37) );
  AO22X1_HVT U54 ( .A1(n95), .A2(TMP_ODATA[2]), .A3(n94), .A4(TMP_ODATA[10]), 
        .Y(n36) );
  AO22X1_HVT U55 ( .A1(n97), .A2(TMP_ODATA[50]), .A3(n96), .A4(TMP_ODATA[58]), 
        .Y(n35) );
  AO22X1_HVT U56 ( .A1(n99), .A2(TMP_ODATA[34]), .A3(n98), .A4(TMP_ODATA[42]), 
        .Y(n34) );
  NOR4X1_HVT U57 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .Y(n38) );
  NAND2X0_HVT U58 ( .A1(n39), .A2(n38), .Y(ODATA[2]) );
  AO22X1_HVT U59 ( .A1(n81), .A2(TMP_ODATA[83]), .A3(n80), .A4(TMP_ODATA[91]), 
        .Y(n43) );
  AO22X1_HVT U60 ( .A1(n83), .A2(TMP_ODATA[67]), .A3(n82), .A4(TMP_ODATA[75]), 
        .Y(n42) );
  AO22X1_HVT U61 ( .A1(n85), .A2(TMP_ODATA[115]), .A3(n84), .A4(TMP_ODATA[123]), .Y(n41) );
  AO22X1_HVT U62 ( .A1(n87), .A2(TMP_ODATA[99]), .A3(n86), .A4(TMP_ODATA[107]), 
        .Y(n40) );
  NOR4X1_HVT U63 ( .A1(n43), .A2(n42), .A3(n41), .A4(n40), .Y(n49) );
  AO22X1_HVT U64 ( .A1(n93), .A2(TMP_ODATA[19]), .A3(n92), .A4(TMP_ODATA[27]), 
        .Y(n47) );
  AO22X1_HVT U65 ( .A1(n95), .A2(TMP_ODATA[3]), .A3(n94), .A4(TMP_ODATA[11]), 
        .Y(n46) );
  AO22X1_HVT U66 ( .A1(n97), .A2(TMP_ODATA[51]), .A3(n96), .A4(TMP_ODATA[59]), 
        .Y(n45) );
  AO22X1_HVT U67 ( .A1(n99), .A2(TMP_ODATA[35]), .A3(n98), .A4(TMP_ODATA[43]), 
        .Y(n44) );
  NOR4X1_HVT U68 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .Y(n48) );
  NAND2X0_HVT U69 ( .A1(n49), .A2(n48), .Y(ODATA[3]) );
  AO22X1_HVT U70 ( .A1(n81), .A2(TMP_ODATA[84]), .A3(n80), .A4(TMP_ODATA[92]), 
        .Y(n53) );
  AO22X1_HVT U71 ( .A1(n83), .A2(TMP_ODATA[68]), .A3(n82), .A4(TMP_ODATA[76]), 
        .Y(n52) );
  AO22X1_HVT U72 ( .A1(n85), .A2(TMP_ODATA[116]), .A3(n84), .A4(TMP_ODATA[124]), .Y(n51) );
  AO22X1_HVT U73 ( .A1(n87), .A2(TMP_ODATA[100]), .A3(n86), .A4(TMP_ODATA[108]), .Y(n50) );
  NOR4X1_HVT U74 ( .A1(n53), .A2(n52), .A3(n51), .A4(n50), .Y(n59) );
  AO22X1_HVT U75 ( .A1(n93), .A2(TMP_ODATA[20]), .A3(n92), .A4(TMP_ODATA[28]), 
        .Y(n57) );
  AO22X1_HVT U76 ( .A1(n95), .A2(TMP_ODATA[4]), .A3(n94), .A4(TMP_ODATA[12]), 
        .Y(n56) );
  AO22X1_HVT U77 ( .A1(n97), .A2(TMP_ODATA[52]), .A3(n96), .A4(TMP_ODATA[60]), 
        .Y(n55) );
  AO22X1_HVT U78 ( .A1(n99), .A2(TMP_ODATA[36]), .A3(n98), .A4(TMP_ODATA[44]), 
        .Y(n54) );
  NOR4X1_HVT U79 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(n58) );
  NAND2X0_HVT U80 ( .A1(n59), .A2(n58), .Y(ODATA[4]) );
  AO22X1_HVT U81 ( .A1(n81), .A2(TMP_ODATA[85]), .A3(n80), .A4(TMP_ODATA[93]), 
        .Y(n63) );
  AO22X1_HVT U82 ( .A1(n83), .A2(TMP_ODATA[69]), .A3(n82), .A4(TMP_ODATA[77]), 
        .Y(n62) );
  AO22X1_HVT U83 ( .A1(n85), .A2(TMP_ODATA[117]), .A3(n84), .A4(TMP_ODATA[125]), .Y(n61) );
  AO22X1_HVT U84 ( .A1(n87), .A2(TMP_ODATA[101]), .A3(n86), .A4(TMP_ODATA[109]), .Y(n60) );
  NOR4X1_HVT U85 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .Y(n69) );
  AO22X1_HVT U86 ( .A1(n93), .A2(TMP_ODATA[21]), .A3(n92), .A4(TMP_ODATA[29]), 
        .Y(n67) );
  AO22X1_HVT U87 ( .A1(n95), .A2(TMP_ODATA[5]), .A3(n94), .A4(TMP_ODATA[13]), 
        .Y(n66) );
  AO22X1_HVT U88 ( .A1(n97), .A2(TMP_ODATA[53]), .A3(n96), .A4(TMP_ODATA[61]), 
        .Y(n65) );
  AO22X1_HVT U89 ( .A1(n99), .A2(TMP_ODATA[37]), .A3(n98), .A4(TMP_ODATA[45]), 
        .Y(n64) );
  NOR4X1_HVT U90 ( .A1(n67), .A2(n66), .A3(n65), .A4(n64), .Y(n68) );
  NAND2X0_HVT U91 ( .A1(n69), .A2(n68), .Y(ODATA[5]) );
  AO22X1_HVT U92 ( .A1(n81), .A2(TMP_ODATA[86]), .A3(n80), .A4(TMP_ODATA[94]), 
        .Y(n73) );
  AO22X1_HVT U93 ( .A1(n83), .A2(TMP_ODATA[70]), .A3(n82), .A4(TMP_ODATA[78]), 
        .Y(n72) );
  AO22X1_HVT U94 ( .A1(n85), .A2(TMP_ODATA[118]), .A3(n84), .A4(TMP_ODATA[126]), .Y(n71) );
  AO22X1_HVT U95 ( .A1(n87), .A2(TMP_ODATA[102]), .A3(n86), .A4(TMP_ODATA[110]), .Y(n70) );
  NOR4X1_HVT U96 ( .A1(n73), .A2(n72), .A3(n71), .A4(n70), .Y(n79) );
  AO22X1_HVT U97 ( .A1(n93), .A2(TMP_ODATA[22]), .A3(n92), .A4(TMP_ODATA[30]), 
        .Y(n77) );
  AO22X1_HVT U98 ( .A1(n95), .A2(TMP_ODATA[6]), .A3(n94), .A4(TMP_ODATA[14]), 
        .Y(n76) );
  AO22X1_HVT U99 ( .A1(n97), .A2(TMP_ODATA[54]), .A3(n96), .A4(TMP_ODATA[62]), 
        .Y(n75) );
  AO22X1_HVT U100 ( .A1(n99), .A2(TMP_ODATA[38]), .A3(n98), .A4(TMP_ODATA[46]), 
        .Y(n74) );
  NOR4X1_HVT U101 ( .A1(n77), .A2(n76), .A3(n75), .A4(n74), .Y(n78) );
  NAND2X0_HVT U102 ( .A1(n79), .A2(n78), .Y(ODATA[6]) );
  AO22X1_HVT U103 ( .A1(n81), .A2(TMP_ODATA[87]), .A3(n80), .A4(TMP_ODATA[95]), 
        .Y(n91) );
  AO22X1_HVT U104 ( .A1(n83), .A2(TMP_ODATA[71]), .A3(n82), .A4(TMP_ODATA[79]), 
        .Y(n90) );
  AO22X1_HVT U105 ( .A1(n85), .A2(TMP_ODATA[119]), .A3(n84), .A4(
        TMP_ODATA[127]), .Y(n89) );
  AO22X1_HVT U106 ( .A1(n87), .A2(TMP_ODATA[103]), .A3(n86), .A4(
        TMP_ODATA[111]), .Y(n88) );
  NOR4X1_HVT U107 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .Y(n105) );
  AO22X1_HVT U108 ( .A1(n93), .A2(TMP_ODATA[23]), .A3(n92), .A4(TMP_ODATA[31]), 
        .Y(n103) );
  AO22X1_HVT U109 ( .A1(n95), .A2(TMP_ODATA[7]), .A3(n94), .A4(TMP_ODATA[15]), 
        .Y(n102) );
  AO22X1_HVT U110 ( .A1(n97), .A2(TMP_ODATA[55]), .A3(n96), .A4(TMP_ODATA[63]), 
        .Y(n101) );
  AO22X1_HVT U111 ( .A1(n99), .A2(TMP_ODATA[39]), .A3(n98), .A4(TMP_ODATA[47]), 
        .Y(n100) );
  NOR4X1_HVT U112 ( .A1(n103), .A2(n102), .A3(n101), .A4(n100), .Y(n104) );
  NAND2X0_HVT U113 ( .A1(n105), .A2(n104), .Y(ODATA[7]) );
endmodule


module SRAM64KB_1 ( ODATA, MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, 
        MEM_IDATA, MEM_ODATA_SELECT );
  output [7:0] ODATA;
  input [9:0] MEM_ADDR;
  input [15:0] MEM_OEB;
  input [15:0] MEM_CSB;
  input [7:0] MEM_IDATA;
  input [3:0] MEM_ODATA_SELECT;
  input MEM_CE, MEM_WEB;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105;
  wire   [127:0] TMP_ODATA;

  SRAM1RW1024x8 \genblk1[0].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[7:0]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[0]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[0]) );
  SRAM1RW1024x8 \genblk1[1].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[15:8]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[1]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[1]) );
  SRAM1RW1024x8 \genblk1[2].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[23:16]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[2]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[2]) );
  SRAM1RW1024x8 \genblk1[3].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[31:24]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[3]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[3]) );
  SRAM1RW1024x8 \genblk1[4].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[39:32]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[4]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[4]) );
  SRAM1RW1024x8 \genblk1[5].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[47:40]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[5]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[5]) );
  SRAM1RW1024x8 \genblk1[6].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[55:48]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[6]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[6]) );
  SRAM1RW1024x8 \genblk1[7].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[63:56]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[7]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[7]) );
  SRAM1RW1024x8 \genblk1[8].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[71:64]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[8]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[8]) );
  SRAM1RW1024x8 \genblk1[9].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[79:72]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[9]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[9]) );
  SRAM1RW1024x8 \genblk1[10].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[87:80]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[10]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[10]) );
  SRAM1RW1024x8 \genblk1[11].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[95:88]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[11]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[11]) );
  SRAM1RW1024x8 \genblk1[12].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[103:96]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[12]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[12]) );
  SRAM1RW1024x8 \genblk1[13].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[111:104]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[13]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[13]) );
  SRAM1RW1024x8 \genblk1[14].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[119:112]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[14]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[14]) );
  SRAM1RW1024x8 \genblk1[15].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[127:120]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[15]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[15]) );
  NOR3X0_HVT U1 ( .A1(MEM_OEB[15]), .A2(n3), .A3(n11), .Y(n84) );
  INVX0_HVT U2 ( .A(MEM_ODATA_SELECT[3]), .Y(n8) );
  OR2X1_HVT U3 ( .A1(n8), .A2(MEM_ODATA_SELECT[0]), .Y(n2) );
  INVX0_HVT U4 ( .A(MEM_ODATA_SELECT[1]), .Y(n1) );
  OR2X1_HVT U5 ( .A1(n1), .A2(MEM_ODATA_SELECT[2]), .Y(n9) );
  NOR3X0_HVT U6 ( .A1(MEM_OEB[10]), .A2(n2), .A3(n9), .Y(n81) );
  NAND2X0_HVT U7 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .Y(n3)
         );
  NOR3X0_HVT U8 ( .A1(MEM_OEB[11]), .A2(n3), .A3(n9), .Y(n80) );
  AO22X1_HVT U9 ( .A1(n81), .A2(TMP_ODATA[80]), .A3(n80), .A4(TMP_ODATA[88]), 
        .Y(n7) );
  NOR4X1_HVT U10 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[8]), .A4(n2), .Y(n83) );
  NOR4X1_HVT U11 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[9]), .A4(n3), .Y(n82) );
  AO22X1_HVT U12 ( .A1(n83), .A2(TMP_ODATA[64]), .A3(n82), .A4(TMP_ODATA[72]), 
        .Y(n6) );
  NAND2X0_HVT U13 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n11) );
  NOR3X0_HVT U14 ( .A1(MEM_OEB[14]), .A2(n2), .A3(n11), .Y(n85) );
  AO22X1_HVT U15 ( .A1(n85), .A2(TMP_ODATA[112]), .A3(n84), .A4(TMP_ODATA[120]), .Y(n5) );
  NAND2X0_HVT U16 ( .A1(MEM_ODATA_SELECT[2]), .A2(n1), .Y(n13) );
  NOR3X0_HVT U17 ( .A1(MEM_OEB[12]), .A2(n2), .A3(n13), .Y(n87) );
  NOR3X0_HVT U18 ( .A1(MEM_OEB[13]), .A2(n3), .A3(n13), .Y(n86) );
  AO22X1_HVT U19 ( .A1(n87), .A2(TMP_ODATA[96]), .A3(n86), .A4(TMP_ODATA[104]), 
        .Y(n4) );
  NOR4X1_HVT U20 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .Y(n19) );
  NOR4X1_HVT U21 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[2]), .A4(n9), .Y(n93) );
  NAND2X0_HVT U22 ( .A1(MEM_ODATA_SELECT[0]), .A2(n8), .Y(n12) );
  NOR3X0_HVT U23 ( .A1(MEM_OEB[3]), .A2(n9), .A3(n12), .Y(n92) );
  AO22X1_HVT U24 ( .A1(n93), .A2(TMP_ODATA[16]), .A3(n92), .A4(TMP_ODATA[24]), 
        .Y(n17) );
  OR2X1_HVT U25 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n10)
         );
  NOR4X1_HVT U26 ( .A1(MEM_OEB[0]), .A2(MEM_ODATA_SELECT[0]), .A3(
        MEM_ODATA_SELECT[3]), .A4(n10), .Y(n95) );
  NOR4X1_HVT U27 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[1]), .A4(n12), .Y(n94) );
  AO22X1_HVT U28 ( .A1(n95), .A2(TMP_ODATA[0]), .A3(n94), .A4(TMP_ODATA[8]), 
        .Y(n16) );
  NOR4X1_HVT U29 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[6]), .A4(n11), .Y(n97) );
  NOR3X0_HVT U30 ( .A1(MEM_OEB[7]), .A2(n11), .A3(n12), .Y(n96) );
  AO22X1_HVT U31 ( .A1(n97), .A2(TMP_ODATA[48]), .A3(n96), .A4(TMP_ODATA[56]), 
        .Y(n15) );
  NOR4X1_HVT U32 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[4]), .A4(n13), .Y(n99) );
  NOR3X0_HVT U33 ( .A1(MEM_OEB[5]), .A2(n13), .A3(n12), .Y(n98) );
  AO22X1_HVT U34 ( .A1(n99), .A2(TMP_ODATA[32]), .A3(n98), .A4(TMP_ODATA[40]), 
        .Y(n14) );
  NOR4X1_HVT U35 ( .A1(n17), .A2(n16), .A3(n15), .A4(n14), .Y(n18) );
  NAND2X0_HVT U36 ( .A1(n19), .A2(n18), .Y(ODATA[0]) );
  AO22X1_HVT U37 ( .A1(n81), .A2(TMP_ODATA[81]), .A3(n80), .A4(TMP_ODATA[89]), 
        .Y(n23) );
  AO22X1_HVT U38 ( .A1(n83), .A2(TMP_ODATA[65]), .A3(n82), .A4(TMP_ODATA[73]), 
        .Y(n22) );
  AO22X1_HVT U39 ( .A1(n85), .A2(TMP_ODATA[113]), .A3(n84), .A4(TMP_ODATA[121]), .Y(n21) );
  AO22X1_HVT U40 ( .A1(n87), .A2(TMP_ODATA[97]), .A3(n86), .A4(TMP_ODATA[105]), 
        .Y(n20) );
  NOR4X1_HVT U41 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .Y(n29) );
  AO22X1_HVT U42 ( .A1(n93), .A2(TMP_ODATA[17]), .A3(n92), .A4(TMP_ODATA[25]), 
        .Y(n27) );
  AO22X1_HVT U43 ( .A1(n95), .A2(TMP_ODATA[1]), .A3(n94), .A4(TMP_ODATA[9]), 
        .Y(n26) );
  AO22X1_HVT U44 ( .A1(n97), .A2(TMP_ODATA[49]), .A3(n96), .A4(TMP_ODATA[57]), 
        .Y(n25) );
  AO22X1_HVT U45 ( .A1(n99), .A2(TMP_ODATA[33]), .A3(n98), .A4(TMP_ODATA[41]), 
        .Y(n24) );
  NOR4X1_HVT U46 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .Y(n28) );
  NAND2X0_HVT U47 ( .A1(n29), .A2(n28), .Y(ODATA[1]) );
  AO22X1_HVT U48 ( .A1(n81), .A2(TMP_ODATA[82]), .A3(n80), .A4(TMP_ODATA[90]), 
        .Y(n33) );
  AO22X1_HVT U49 ( .A1(n83), .A2(TMP_ODATA[66]), .A3(n82), .A4(TMP_ODATA[74]), 
        .Y(n32) );
  AO22X1_HVT U50 ( .A1(n85), .A2(TMP_ODATA[114]), .A3(n84), .A4(TMP_ODATA[122]), .Y(n31) );
  AO22X1_HVT U51 ( .A1(n87), .A2(TMP_ODATA[98]), .A3(n86), .A4(TMP_ODATA[106]), 
        .Y(n30) );
  NOR4X1_HVT U52 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Y(n39) );
  AO22X1_HVT U53 ( .A1(n93), .A2(TMP_ODATA[18]), .A3(n92), .A4(TMP_ODATA[26]), 
        .Y(n37) );
  AO22X1_HVT U54 ( .A1(n95), .A2(TMP_ODATA[2]), .A3(n94), .A4(TMP_ODATA[10]), 
        .Y(n36) );
  AO22X1_HVT U55 ( .A1(n97), .A2(TMP_ODATA[50]), .A3(n96), .A4(TMP_ODATA[58]), 
        .Y(n35) );
  AO22X1_HVT U56 ( .A1(n99), .A2(TMP_ODATA[34]), .A3(n98), .A4(TMP_ODATA[42]), 
        .Y(n34) );
  NOR4X1_HVT U57 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .Y(n38) );
  NAND2X0_HVT U58 ( .A1(n39), .A2(n38), .Y(ODATA[2]) );
  AO22X1_HVT U59 ( .A1(n81), .A2(TMP_ODATA[83]), .A3(n80), .A4(TMP_ODATA[91]), 
        .Y(n43) );
  AO22X1_HVT U60 ( .A1(n83), .A2(TMP_ODATA[67]), .A3(n82), .A4(TMP_ODATA[75]), 
        .Y(n42) );
  AO22X1_HVT U61 ( .A1(n85), .A2(TMP_ODATA[115]), .A3(n84), .A4(TMP_ODATA[123]), .Y(n41) );
  AO22X1_HVT U62 ( .A1(n87), .A2(TMP_ODATA[99]), .A3(n86), .A4(TMP_ODATA[107]), 
        .Y(n40) );
  NOR4X1_HVT U63 ( .A1(n43), .A2(n42), .A3(n41), .A4(n40), .Y(n49) );
  AO22X1_HVT U64 ( .A1(n93), .A2(TMP_ODATA[19]), .A3(n92), .A4(TMP_ODATA[27]), 
        .Y(n47) );
  AO22X1_HVT U65 ( .A1(n95), .A2(TMP_ODATA[3]), .A3(n94), .A4(TMP_ODATA[11]), 
        .Y(n46) );
  AO22X1_HVT U66 ( .A1(n97), .A2(TMP_ODATA[51]), .A3(n96), .A4(TMP_ODATA[59]), 
        .Y(n45) );
  AO22X1_HVT U67 ( .A1(n99), .A2(TMP_ODATA[35]), .A3(n98), .A4(TMP_ODATA[43]), 
        .Y(n44) );
  NOR4X1_HVT U68 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .Y(n48) );
  NAND2X0_HVT U69 ( .A1(n49), .A2(n48), .Y(ODATA[3]) );
  AO22X1_HVT U70 ( .A1(n81), .A2(TMP_ODATA[84]), .A3(n80), .A4(TMP_ODATA[92]), 
        .Y(n53) );
  AO22X1_HVT U71 ( .A1(n83), .A2(TMP_ODATA[68]), .A3(n82), .A4(TMP_ODATA[76]), 
        .Y(n52) );
  AO22X1_HVT U72 ( .A1(n85), .A2(TMP_ODATA[116]), .A3(n84), .A4(TMP_ODATA[124]), .Y(n51) );
  AO22X1_HVT U73 ( .A1(n87), .A2(TMP_ODATA[100]), .A3(n86), .A4(TMP_ODATA[108]), .Y(n50) );
  NOR4X1_HVT U74 ( .A1(n53), .A2(n52), .A3(n51), .A4(n50), .Y(n59) );
  AO22X1_HVT U75 ( .A1(n93), .A2(TMP_ODATA[20]), .A3(n92), .A4(TMP_ODATA[28]), 
        .Y(n57) );
  AO22X1_HVT U76 ( .A1(n95), .A2(TMP_ODATA[4]), .A3(n94), .A4(TMP_ODATA[12]), 
        .Y(n56) );
  AO22X1_HVT U77 ( .A1(n97), .A2(TMP_ODATA[52]), .A3(n96), .A4(TMP_ODATA[60]), 
        .Y(n55) );
  AO22X1_HVT U78 ( .A1(n99), .A2(TMP_ODATA[36]), .A3(n98), .A4(TMP_ODATA[44]), 
        .Y(n54) );
  NOR4X1_HVT U79 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(n58) );
  NAND2X0_HVT U80 ( .A1(n59), .A2(n58), .Y(ODATA[4]) );
  AO22X1_HVT U81 ( .A1(n81), .A2(TMP_ODATA[85]), .A3(n80), .A4(TMP_ODATA[93]), 
        .Y(n63) );
  AO22X1_HVT U82 ( .A1(n83), .A2(TMP_ODATA[69]), .A3(n82), .A4(TMP_ODATA[77]), 
        .Y(n62) );
  AO22X1_HVT U83 ( .A1(n85), .A2(TMP_ODATA[117]), .A3(n84), .A4(TMP_ODATA[125]), .Y(n61) );
  AO22X1_HVT U84 ( .A1(n87), .A2(TMP_ODATA[101]), .A3(n86), .A4(TMP_ODATA[109]), .Y(n60) );
  NOR4X1_HVT U85 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .Y(n69) );
  AO22X1_HVT U86 ( .A1(n93), .A2(TMP_ODATA[21]), .A3(n92), .A4(TMP_ODATA[29]), 
        .Y(n67) );
  AO22X1_HVT U87 ( .A1(n95), .A2(TMP_ODATA[5]), .A3(n94), .A4(TMP_ODATA[13]), 
        .Y(n66) );
  AO22X1_HVT U88 ( .A1(n97), .A2(TMP_ODATA[53]), .A3(n96), .A4(TMP_ODATA[61]), 
        .Y(n65) );
  AO22X1_HVT U89 ( .A1(n99), .A2(TMP_ODATA[37]), .A3(n98), .A4(TMP_ODATA[45]), 
        .Y(n64) );
  NOR4X1_HVT U90 ( .A1(n67), .A2(n66), .A3(n65), .A4(n64), .Y(n68) );
  NAND2X0_HVT U91 ( .A1(n69), .A2(n68), .Y(ODATA[5]) );
  AO22X1_HVT U92 ( .A1(n81), .A2(TMP_ODATA[86]), .A3(n80), .A4(TMP_ODATA[94]), 
        .Y(n73) );
  AO22X1_HVT U93 ( .A1(n83), .A2(TMP_ODATA[70]), .A3(n82), .A4(TMP_ODATA[78]), 
        .Y(n72) );
  AO22X1_HVT U94 ( .A1(n85), .A2(TMP_ODATA[118]), .A3(n84), .A4(TMP_ODATA[126]), .Y(n71) );
  AO22X1_HVT U95 ( .A1(n87), .A2(TMP_ODATA[102]), .A3(n86), .A4(TMP_ODATA[110]), .Y(n70) );
  NOR4X1_HVT U96 ( .A1(n73), .A2(n72), .A3(n71), .A4(n70), .Y(n79) );
  AO22X1_HVT U97 ( .A1(n93), .A2(TMP_ODATA[22]), .A3(n92), .A4(TMP_ODATA[30]), 
        .Y(n77) );
  AO22X1_HVT U98 ( .A1(n95), .A2(TMP_ODATA[6]), .A3(n94), .A4(TMP_ODATA[14]), 
        .Y(n76) );
  AO22X1_HVT U99 ( .A1(n97), .A2(TMP_ODATA[54]), .A3(n96), .A4(TMP_ODATA[62]), 
        .Y(n75) );
  AO22X1_HVT U100 ( .A1(n99), .A2(TMP_ODATA[38]), .A3(n98), .A4(TMP_ODATA[46]), 
        .Y(n74) );
  NOR4X1_HVT U101 ( .A1(n77), .A2(n76), .A3(n75), .A4(n74), .Y(n78) );
  NAND2X0_HVT U102 ( .A1(n79), .A2(n78), .Y(ODATA[6]) );
  AO22X1_HVT U103 ( .A1(n81), .A2(TMP_ODATA[87]), .A3(n80), .A4(TMP_ODATA[95]), 
        .Y(n91) );
  AO22X1_HVT U104 ( .A1(n83), .A2(TMP_ODATA[71]), .A3(n82), .A4(TMP_ODATA[79]), 
        .Y(n90) );
  AO22X1_HVT U105 ( .A1(n85), .A2(TMP_ODATA[119]), .A3(n84), .A4(
        TMP_ODATA[127]), .Y(n89) );
  AO22X1_HVT U106 ( .A1(n87), .A2(TMP_ODATA[103]), .A3(n86), .A4(
        TMP_ODATA[111]), .Y(n88) );
  NOR4X1_HVT U107 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .Y(n105) );
  AO22X1_HVT U108 ( .A1(n93), .A2(TMP_ODATA[23]), .A3(n92), .A4(TMP_ODATA[31]), 
        .Y(n103) );
  AO22X1_HVT U109 ( .A1(n95), .A2(TMP_ODATA[7]), .A3(n94), .A4(TMP_ODATA[15]), 
        .Y(n102) );
  AO22X1_HVT U110 ( .A1(n97), .A2(TMP_ODATA[55]), .A3(n96), .A4(TMP_ODATA[63]), 
        .Y(n101) );
  AO22X1_HVT U111 ( .A1(n99), .A2(TMP_ODATA[39]), .A3(n98), .A4(TMP_ODATA[47]), 
        .Y(n100) );
  NOR4X1_HVT U112 ( .A1(n103), .A2(n102), .A3(n101), .A4(n100), .Y(n104) );
  NAND2X0_HVT U113 ( .A1(n105), .A2(n104), .Y(ODATA[7]) );
endmodule


module SRAM64KB_2 ( ODATA, MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, 
        MEM_IDATA, MEM_ODATA_SELECT );
  output [7:0] ODATA;
  input [9:0] MEM_ADDR;
  input [15:0] MEM_OEB;
  input [15:0] MEM_CSB;
  input [7:0] MEM_IDATA;
  input [3:0] MEM_ODATA_SELECT;
  input MEM_CE, MEM_WEB;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105;
  wire   [127:0] TMP_ODATA;

  SRAM1RW1024x8 \genblk1[0].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[7:0]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[0]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[0]) );
  SRAM1RW1024x8 \genblk1[1].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[15:8]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[1]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[1]) );
  SRAM1RW1024x8 \genblk1[2].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[23:16]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[2]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[2]) );
  SRAM1RW1024x8 \genblk1[3].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[31:24]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[3]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[3]) );
  SRAM1RW1024x8 \genblk1[4].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[39:32]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[4]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[4]) );
  SRAM1RW1024x8 \genblk1[5].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[47:40]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[5]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[5]) );
  SRAM1RW1024x8 \genblk1[6].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[55:48]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[6]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[6]) );
  SRAM1RW1024x8 \genblk1[7].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[63:56]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[7]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[7]) );
  SRAM1RW1024x8 \genblk1[8].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[71:64]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[8]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[8]) );
  SRAM1RW1024x8 \genblk1[9].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[79:72]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[9]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[9]) );
  SRAM1RW1024x8 \genblk1[10].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[87:80]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[10]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[10]) );
  SRAM1RW1024x8 \genblk1[11].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[95:88]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[11]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[11]) );
  SRAM1RW1024x8 \genblk1[12].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[103:96]), .A(
        MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[12]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[12]) );
  SRAM1RW1024x8 \genblk1[13].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[111:104]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[13]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[13]) );
  SRAM1RW1024x8 \genblk1[14].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[119:112]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[14]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[14]) );
  SRAM1RW1024x8 \genblk1[15].UMEM  ( .I(MEM_IDATA), .O(TMP_ODATA[127:120]), 
        .A(MEM_ADDR), .CE(MEM_CE), .CSB(MEM_CSB[15]), .WEB(MEM_WEB), .OEB(
        MEM_OEB[15]) );
  OR2X1_HVT U1 ( .A1(n1), .A2(MEM_ODATA_SELECT[2]), .Y(n9) );
  NOR3X0_HVT U2 ( .A1(MEM_OEB[12]), .A2(n2), .A3(n13), .Y(n87) );
  INVX0_HVT U3 ( .A(MEM_ODATA_SELECT[3]), .Y(n8) );
  OR2X1_HVT U4 ( .A1(n8), .A2(MEM_ODATA_SELECT[0]), .Y(n2) );
  INVX0_HVT U5 ( .A(MEM_ODATA_SELECT[1]), .Y(n1) );
  NOR3X0_HVT U6 ( .A1(MEM_OEB[10]), .A2(n2), .A3(n9), .Y(n81) );
  NAND2X0_HVT U7 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .Y(n3)
         );
  NOR3X0_HVT U8 ( .A1(MEM_OEB[11]), .A2(n3), .A3(n9), .Y(n80) );
  AO22X1_HVT U9 ( .A1(n81), .A2(TMP_ODATA[80]), .A3(n80), .A4(TMP_ODATA[88]), 
        .Y(n7) );
  NOR4X1_HVT U10 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[8]), .A4(n2), .Y(n83) );
  NOR4X1_HVT U11 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[9]), .A4(n3), .Y(n82) );
  AO22X1_HVT U12 ( .A1(n83), .A2(TMP_ODATA[64]), .A3(n82), .A4(TMP_ODATA[72]), 
        .Y(n6) );
  NAND2X0_HVT U13 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n11) );
  NOR3X0_HVT U14 ( .A1(MEM_OEB[14]), .A2(n2), .A3(n11), .Y(n85) );
  NOR3X0_HVT U15 ( .A1(MEM_OEB[15]), .A2(n3), .A3(n11), .Y(n84) );
  AO22X1_HVT U16 ( .A1(n85), .A2(TMP_ODATA[112]), .A3(n84), .A4(TMP_ODATA[120]), .Y(n5) );
  NAND2X0_HVT U17 ( .A1(MEM_ODATA_SELECT[2]), .A2(n1), .Y(n13) );
  NOR3X0_HVT U18 ( .A1(MEM_OEB[13]), .A2(n3), .A3(n13), .Y(n86) );
  AO22X1_HVT U19 ( .A1(n87), .A2(TMP_ODATA[96]), .A3(n86), .A4(TMP_ODATA[104]), 
        .Y(n4) );
  NOR4X1_HVT U20 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .Y(n19) );
  NOR4X1_HVT U21 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[2]), .A4(n9), .Y(n93) );
  NAND2X0_HVT U22 ( .A1(MEM_ODATA_SELECT[0]), .A2(n8), .Y(n12) );
  NOR3X0_HVT U23 ( .A1(MEM_OEB[3]), .A2(n9), .A3(n12), .Y(n92) );
  AO22X1_HVT U24 ( .A1(n93), .A2(TMP_ODATA[16]), .A3(n92), .A4(TMP_ODATA[24]), 
        .Y(n17) );
  OR2X1_HVT U25 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .Y(n10)
         );
  NOR4X1_HVT U26 ( .A1(MEM_OEB[0]), .A2(MEM_ODATA_SELECT[0]), .A3(
        MEM_ODATA_SELECT[3]), .A4(n10), .Y(n95) );
  NOR4X1_HVT U27 ( .A1(MEM_ODATA_SELECT[2]), .A2(MEM_ODATA_SELECT[1]), .A3(
        MEM_OEB[1]), .A4(n12), .Y(n94) );
  AO22X1_HVT U28 ( .A1(n95), .A2(TMP_ODATA[0]), .A3(n94), .A4(TMP_ODATA[8]), 
        .Y(n16) );
  NOR4X1_HVT U29 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[6]), .A4(n11), .Y(n97) );
  NOR3X0_HVT U30 ( .A1(MEM_OEB[7]), .A2(n11), .A3(n12), .Y(n96) );
  AO22X1_HVT U31 ( .A1(n97), .A2(TMP_ODATA[48]), .A3(n96), .A4(TMP_ODATA[56]), 
        .Y(n15) );
  NOR4X1_HVT U32 ( .A1(MEM_ODATA_SELECT[0]), .A2(MEM_ODATA_SELECT[3]), .A3(
        MEM_OEB[4]), .A4(n13), .Y(n99) );
  NOR3X0_HVT U33 ( .A1(MEM_OEB[5]), .A2(n13), .A3(n12), .Y(n98) );
  AO22X1_HVT U34 ( .A1(n99), .A2(TMP_ODATA[32]), .A3(n98), .A4(TMP_ODATA[40]), 
        .Y(n14) );
  NOR4X1_HVT U35 ( .A1(n17), .A2(n16), .A3(n15), .A4(n14), .Y(n18) );
  NAND2X0_HVT U36 ( .A1(n19), .A2(n18), .Y(ODATA[0]) );
  AO22X1_HVT U37 ( .A1(n81), .A2(TMP_ODATA[81]), .A3(n80), .A4(TMP_ODATA[89]), 
        .Y(n23) );
  AO22X1_HVT U38 ( .A1(n83), .A2(TMP_ODATA[65]), .A3(n82), .A4(TMP_ODATA[73]), 
        .Y(n22) );
  AO22X1_HVT U39 ( .A1(n85), .A2(TMP_ODATA[113]), .A3(n84), .A4(TMP_ODATA[121]), .Y(n21) );
  AO22X1_HVT U40 ( .A1(n87), .A2(TMP_ODATA[97]), .A3(n86), .A4(TMP_ODATA[105]), 
        .Y(n20) );
  NOR4X1_HVT U41 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .Y(n29) );
  AO22X1_HVT U42 ( .A1(n93), .A2(TMP_ODATA[17]), .A3(n92), .A4(TMP_ODATA[25]), 
        .Y(n27) );
  AO22X1_HVT U43 ( .A1(n95), .A2(TMP_ODATA[1]), .A3(n94), .A4(TMP_ODATA[9]), 
        .Y(n26) );
  AO22X1_HVT U44 ( .A1(n97), .A2(TMP_ODATA[49]), .A3(n96), .A4(TMP_ODATA[57]), 
        .Y(n25) );
  AO22X1_HVT U45 ( .A1(n99), .A2(TMP_ODATA[33]), .A3(n98), .A4(TMP_ODATA[41]), 
        .Y(n24) );
  NOR4X1_HVT U46 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .Y(n28) );
  NAND2X0_HVT U47 ( .A1(n29), .A2(n28), .Y(ODATA[1]) );
  AO22X1_HVT U48 ( .A1(n81), .A2(TMP_ODATA[82]), .A3(n80), .A4(TMP_ODATA[90]), 
        .Y(n33) );
  AO22X1_HVT U49 ( .A1(n83), .A2(TMP_ODATA[66]), .A3(n82), .A4(TMP_ODATA[74]), 
        .Y(n32) );
  AO22X1_HVT U50 ( .A1(n85), .A2(TMP_ODATA[114]), .A3(n84), .A4(TMP_ODATA[122]), .Y(n31) );
  AO22X1_HVT U51 ( .A1(n87), .A2(TMP_ODATA[98]), .A3(n86), .A4(TMP_ODATA[106]), 
        .Y(n30) );
  NOR4X1_HVT U52 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Y(n39) );
  AO22X1_HVT U53 ( .A1(n93), .A2(TMP_ODATA[18]), .A3(n92), .A4(TMP_ODATA[26]), 
        .Y(n37) );
  AO22X1_HVT U54 ( .A1(n95), .A2(TMP_ODATA[2]), .A3(n94), .A4(TMP_ODATA[10]), 
        .Y(n36) );
  AO22X1_HVT U55 ( .A1(n97), .A2(TMP_ODATA[50]), .A3(n96), .A4(TMP_ODATA[58]), 
        .Y(n35) );
  AO22X1_HVT U56 ( .A1(n99), .A2(TMP_ODATA[34]), .A3(n98), .A4(TMP_ODATA[42]), 
        .Y(n34) );
  NOR4X1_HVT U57 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .Y(n38) );
  NAND2X0_HVT U58 ( .A1(n39), .A2(n38), .Y(ODATA[2]) );
  AO22X1_HVT U59 ( .A1(n81), .A2(TMP_ODATA[83]), .A3(n80), .A4(TMP_ODATA[91]), 
        .Y(n43) );
  AO22X1_HVT U60 ( .A1(n83), .A2(TMP_ODATA[67]), .A3(n82), .A4(TMP_ODATA[75]), 
        .Y(n42) );
  AO22X1_HVT U61 ( .A1(n85), .A2(TMP_ODATA[115]), .A3(n84), .A4(TMP_ODATA[123]), .Y(n41) );
  AO22X1_HVT U62 ( .A1(n87), .A2(TMP_ODATA[99]), .A3(n86), .A4(TMP_ODATA[107]), 
        .Y(n40) );
  NOR4X1_HVT U63 ( .A1(n43), .A2(n42), .A3(n41), .A4(n40), .Y(n49) );
  AO22X1_HVT U64 ( .A1(n93), .A2(TMP_ODATA[19]), .A3(n92), .A4(TMP_ODATA[27]), 
        .Y(n47) );
  AO22X1_HVT U65 ( .A1(n95), .A2(TMP_ODATA[3]), .A3(n94), .A4(TMP_ODATA[11]), 
        .Y(n46) );
  AO22X1_HVT U66 ( .A1(n97), .A2(TMP_ODATA[51]), .A3(n96), .A4(TMP_ODATA[59]), 
        .Y(n45) );
  AO22X1_HVT U67 ( .A1(n99), .A2(TMP_ODATA[35]), .A3(n98), .A4(TMP_ODATA[43]), 
        .Y(n44) );
  NOR4X1_HVT U68 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .Y(n48) );
  NAND2X0_HVT U69 ( .A1(n49), .A2(n48), .Y(ODATA[3]) );
  AO22X1_HVT U70 ( .A1(n81), .A2(TMP_ODATA[84]), .A3(n80), .A4(TMP_ODATA[92]), 
        .Y(n53) );
  AO22X1_HVT U71 ( .A1(n83), .A2(TMP_ODATA[68]), .A3(n82), .A4(TMP_ODATA[76]), 
        .Y(n52) );
  AO22X1_HVT U72 ( .A1(n85), .A2(TMP_ODATA[116]), .A3(n84), .A4(TMP_ODATA[124]), .Y(n51) );
  AO22X1_HVT U73 ( .A1(n87), .A2(TMP_ODATA[100]), .A3(n86), .A4(TMP_ODATA[108]), .Y(n50) );
  NOR4X1_HVT U74 ( .A1(n53), .A2(n52), .A3(n51), .A4(n50), .Y(n59) );
  AO22X1_HVT U75 ( .A1(n93), .A2(TMP_ODATA[20]), .A3(n92), .A4(TMP_ODATA[28]), 
        .Y(n57) );
  AO22X1_HVT U76 ( .A1(n95), .A2(TMP_ODATA[4]), .A3(n94), .A4(TMP_ODATA[12]), 
        .Y(n56) );
  AO22X1_HVT U77 ( .A1(n97), .A2(TMP_ODATA[52]), .A3(n96), .A4(TMP_ODATA[60]), 
        .Y(n55) );
  AO22X1_HVT U78 ( .A1(n99), .A2(TMP_ODATA[36]), .A3(n98), .A4(TMP_ODATA[44]), 
        .Y(n54) );
  NOR4X1_HVT U79 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(n58) );
  NAND2X0_HVT U80 ( .A1(n59), .A2(n58), .Y(ODATA[4]) );
  AO22X1_HVT U81 ( .A1(n81), .A2(TMP_ODATA[85]), .A3(n80), .A4(TMP_ODATA[93]), 
        .Y(n63) );
  AO22X1_HVT U82 ( .A1(n83), .A2(TMP_ODATA[69]), .A3(n82), .A4(TMP_ODATA[77]), 
        .Y(n62) );
  AO22X1_HVT U83 ( .A1(n85), .A2(TMP_ODATA[117]), .A3(n84), .A4(TMP_ODATA[125]), .Y(n61) );
  AO22X1_HVT U84 ( .A1(n87), .A2(TMP_ODATA[101]), .A3(n86), .A4(TMP_ODATA[109]), .Y(n60) );
  NOR4X1_HVT U85 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .Y(n69) );
  AO22X1_HVT U86 ( .A1(n93), .A2(TMP_ODATA[21]), .A3(n92), .A4(TMP_ODATA[29]), 
        .Y(n67) );
  AO22X1_HVT U87 ( .A1(n95), .A2(TMP_ODATA[5]), .A3(n94), .A4(TMP_ODATA[13]), 
        .Y(n66) );
  AO22X1_HVT U88 ( .A1(n97), .A2(TMP_ODATA[53]), .A3(n96), .A4(TMP_ODATA[61]), 
        .Y(n65) );
  AO22X1_HVT U89 ( .A1(n99), .A2(TMP_ODATA[37]), .A3(n98), .A4(TMP_ODATA[45]), 
        .Y(n64) );
  NOR4X1_HVT U90 ( .A1(n67), .A2(n66), .A3(n65), .A4(n64), .Y(n68) );
  NAND2X0_HVT U91 ( .A1(n69), .A2(n68), .Y(ODATA[5]) );
  AO22X1_HVT U92 ( .A1(n81), .A2(TMP_ODATA[86]), .A3(n80), .A4(TMP_ODATA[94]), 
        .Y(n73) );
  AO22X1_HVT U93 ( .A1(n83), .A2(TMP_ODATA[70]), .A3(n82), .A4(TMP_ODATA[78]), 
        .Y(n72) );
  AO22X1_HVT U94 ( .A1(n85), .A2(TMP_ODATA[118]), .A3(n84), .A4(TMP_ODATA[126]), .Y(n71) );
  AO22X1_HVT U95 ( .A1(n87), .A2(TMP_ODATA[102]), .A3(n86), .A4(TMP_ODATA[110]), .Y(n70) );
  NOR4X1_HVT U96 ( .A1(n73), .A2(n72), .A3(n71), .A4(n70), .Y(n79) );
  AO22X1_HVT U97 ( .A1(n93), .A2(TMP_ODATA[22]), .A3(n92), .A4(TMP_ODATA[30]), 
        .Y(n77) );
  AO22X1_HVT U98 ( .A1(n95), .A2(TMP_ODATA[6]), .A3(n94), .A4(TMP_ODATA[14]), 
        .Y(n76) );
  AO22X1_HVT U99 ( .A1(n97), .A2(TMP_ODATA[54]), .A3(n96), .A4(TMP_ODATA[62]), 
        .Y(n75) );
  AO22X1_HVT U100 ( .A1(n99), .A2(TMP_ODATA[38]), .A3(n98), .A4(TMP_ODATA[46]), 
        .Y(n74) );
  NOR4X1_HVT U101 ( .A1(n77), .A2(n76), .A3(n75), .A4(n74), .Y(n78) );
  NAND2X0_HVT U102 ( .A1(n79), .A2(n78), .Y(ODATA[6]) );
  AO22X1_HVT U103 ( .A1(n81), .A2(TMP_ODATA[87]), .A3(n80), .A4(TMP_ODATA[95]), 
        .Y(n91) );
  AO22X1_HVT U104 ( .A1(n83), .A2(TMP_ODATA[71]), .A3(n82), .A4(TMP_ODATA[79]), 
        .Y(n90) );
  AO22X1_HVT U105 ( .A1(n85), .A2(TMP_ODATA[119]), .A3(n84), .A4(
        TMP_ODATA[127]), .Y(n89) );
  AO22X1_HVT U106 ( .A1(n87), .A2(TMP_ODATA[103]), .A3(n86), .A4(
        TMP_ODATA[111]), .Y(n88) );
  NOR4X1_HVT U107 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .Y(n105) );
  AO22X1_HVT U108 ( .A1(n93), .A2(TMP_ODATA[23]), .A3(n92), .A4(TMP_ODATA[31]), 
        .Y(n103) );
  AO22X1_HVT U109 ( .A1(n95), .A2(TMP_ODATA[7]), .A3(n94), .A4(TMP_ODATA[15]), 
        .Y(n102) );
  AO22X1_HVT U110 ( .A1(n97), .A2(TMP_ODATA[55]), .A3(n96), .A4(TMP_ODATA[63]), 
        .Y(n101) );
  AO22X1_HVT U111 ( .A1(n99), .A2(TMP_ODATA[39]), .A3(n98), .A4(TMP_ODATA[47]), 
        .Y(n100) );
  NOR4X1_HVT U112 ( .A1(n103), .A2(n102), .A3(n101), .A4(n100), .Y(n104) );
  NAND2X0_HVT U113 ( .A1(n105), .A2(n104), .Y(ODATA[7]) );
endmodule


module MEMCTRL ( ODATA, ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB );
  output [7:0] ODATA;
  input [15:0] ADDR;
  input [7:0] IDATA;
  input CE, CLK, CSB, OEB, RSTN, WEB;
  wire   MEM_CE, MEM_WEB, n1;
  wire   [7:0] MEM_ODATA_BANK1;
  wire   [7:0] MEM_ODATA_BANK2;
  wire   [7:0] MEM_ODATA_BANK3;
  wire   [7:0] MEM_ODATA_BANK4;
  wire   [9:0] MEM_ADDR;
  wire   [15:0] MEM_OEB_BANK1;
  wire   [15:0] MEM_CSB_BANK1;
  wire   [15:0] MEM_OEB_BANK2;
  wire   [15:0] MEM_CSB_BANK2;
  wire   [15:0] MEM_OEB_BANK3;
  wire   [15:0] MEM_CSB_BANK3;
  wire   [15:0] MEM_OEB_BANK4;
  wire   [15:0] MEM_CSB_BANK4;
  wire   [7:0] MEM_IDATA;
  wire   [3:0] MEM_ODATA_SELECT;

  FSM UFSM ( .MEM_ADDR(MEM_ADDR), .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), 
        .MEM_OEB_BANK1(MEM_OEB_BANK1), .MEM_CSB_BANK1(MEM_CSB_BANK1), 
        .MEM_OEB_BANK2(MEM_OEB_BANK2), .MEM_CSB_BANK2(MEM_CSB_BANK2), 
        .MEM_OEB_BANK3(MEM_OEB_BANK3), .MEM_CSB_BANK3(MEM_CSB_BANK3), 
        .MEM_OEB_BANK4(MEM_OEB_BANK4), .MEM_CSB_BANK4(MEM_CSB_BANK4), 
        .MEM_IDATA(MEM_IDATA), .RSTN(RSTN), .ADDR(ADDR), .CE(CE), .CSB(CSB), 
        .WEB(WEB), .OEB(OEB), .IDATA(IDATA), .CLK(CLK), 
        .\MEM_ODATA_SELECT[3]_BAR (MEM_ODATA_SELECT[3]), 
        .\MEM_ODATA_SELECT[2] (MEM_ODATA_SELECT[2]), .\MEM_ODATA_SELECT[1] (
        MEM_ODATA_SELECT[1]), .\MEM_ODATA_SELECT[0] (MEM_ODATA_SELECT[0]) );
  SRAM64KB_3 USRAM_BANK1 ( .ODATA(MEM_ODATA_BANK1), .MEM_ADDR(MEM_ADDR), 
        .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), .MEM_OEB(MEM_OEB_BANK1), .MEM_CSB(
        MEM_CSB_BANK1), .MEM_IDATA(MEM_IDATA), .MEM_ODATA_SELECT({n1, 
        MEM_ODATA_SELECT[2:0]}) );
  SRAM64KB_2 USRAM_BANK2 ( .ODATA(MEM_ODATA_BANK2), .MEM_ADDR(MEM_ADDR), 
        .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), .MEM_OEB(MEM_OEB_BANK2), .MEM_CSB(
        MEM_CSB_BANK2), .MEM_IDATA(MEM_IDATA), .MEM_ODATA_SELECT({n1, 
        MEM_ODATA_SELECT[2:0]}) );
  SRAM64KB_1 USRAM_BANK3 ( .ODATA(MEM_ODATA_BANK3), .MEM_ADDR(MEM_ADDR), 
        .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), .MEM_OEB(MEM_OEB_BANK3), .MEM_CSB(
        MEM_CSB_BANK3), .MEM_IDATA(MEM_IDATA), .MEM_ODATA_SELECT({n1, 
        MEM_ODATA_SELECT[2:0]}) );
  SRAM64KB_0 USRAM_BANK4 ( .ODATA(MEM_ODATA_BANK4), .MEM_ADDR(MEM_ADDR), 
        .MEM_CE(MEM_CE), .MEM_WEB(MEM_WEB), .MEM_OEB(MEM_OEB_BANK4), .MEM_CSB(
        MEM_CSB_BANK4), .MEM_IDATA(MEM_IDATA), .MEM_ODATA_SELECT({n1, 
        MEM_ODATA_SELECT[2:0]}) );
  OR4X1_HVT U9 ( .A1(MEM_ODATA_BANK1[0]), .A2(MEM_ODATA_BANK2[0]), .A3(
        MEM_ODATA_BANK3[0]), .A4(MEM_ODATA_BANK4[0]), .Y(ODATA[0]) );
  OR4X1_HVT U10 ( .A1(MEM_ODATA_BANK1[1]), .A2(MEM_ODATA_BANK2[1]), .A3(
        MEM_ODATA_BANK3[1]), .A4(MEM_ODATA_BANK4[1]), .Y(ODATA[1]) );
  OR4X1_HVT U11 ( .A1(MEM_ODATA_BANK1[2]), .A2(MEM_ODATA_BANK2[2]), .A3(
        MEM_ODATA_BANK3[2]), .A4(MEM_ODATA_BANK4[2]), .Y(ODATA[2]) );
  OR4X1_HVT U12 ( .A1(MEM_ODATA_BANK1[3]), .A2(MEM_ODATA_BANK2[3]), .A3(
        MEM_ODATA_BANK3[3]), .A4(MEM_ODATA_BANK4[3]), .Y(ODATA[3]) );
  OR4X1_HVT U13 ( .A1(MEM_ODATA_BANK1[4]), .A2(MEM_ODATA_BANK2[4]), .A3(
        MEM_ODATA_BANK3[4]), .A4(MEM_ODATA_BANK4[4]), .Y(ODATA[4]) );
  OR4X1_HVT U14 ( .A1(MEM_ODATA_BANK1[5]), .A2(MEM_ODATA_BANK2[5]), .A3(
        MEM_ODATA_BANK3[5]), .A4(MEM_ODATA_BANK4[5]), .Y(ODATA[5]) );
  OR4X1_HVT U15 ( .A1(MEM_ODATA_BANK1[6]), .A2(MEM_ODATA_BANK2[6]), .A3(
        MEM_ODATA_BANK3[6]), .A4(MEM_ODATA_BANK4[6]), .Y(ODATA[6]) );
  OR4X1_HVT U16 ( .A1(MEM_ODATA_BANK1[7]), .A2(MEM_ODATA_BANK2[7]), .A3(
        MEM_ODATA_BANK3[7]), .A4(MEM_ODATA_BANK4[7]), .Y(ODATA[7]) );
  INVX2_HVT U17 ( .A(MEM_ODATA_SELECT[3]), .Y(n1) );
endmodule

