module MEMCTRL(/*AUTOARG*/
               // Outputs
               ODATA, BIST_PASS,
               // Inputs
               ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB, BIST_EN, BISR_EN, BIST_MODE
               );
   input [15:0]         ADDR;                   // To UFSM of FSM.v
   input                CE;                     // To UFSM of FSM.v
   input                CLK;                    // To UFSM of FSM.v
   input                CSB;                    // To UFSM of FSM.v
   input [7:0]          IDATA;                  // To UFSM of FSM.v
   input                OEB;                    // To UFSM of FSM.v
   input                RSTN;                   // To UFSM of FSM.v
   input                WEB;                    // To UFSM of FSM.v
   input                BIST_EN;                    // To UFSM of FSM.v
   input                BISR_EN;                    // To UFSM of FSM.v
   input [2:0]          BIST_MODE;                    // To UFSM of FSM.v

   output [7:0]         ODATA;
   output 		         BIST_PASS;


   wire [9:0]           MEM_ADDR;
   wire                 MEM_CE;
   wire                 MEM_WEB;
   wire [63:0]         MEM_OEB;
   wire [63:0]         MEM_CSB;
   reg [7:0]           MEM_IDATA;
   wire [7:0]           MEM_ODATA;

	//===============================

	wire [15:0] 			BINARY_COUNTER_ADDR;
	wire [15:0] 			GRAY_COUNTER_ADDR;
	wire [15:0] 			LFSR_ADDR;
	wire [7:0]				TOGGLED_DATA;
	wire [7:0]				LFSR_DATA;

	reg [15:0]			   FSM_ADDR;
	reg [7:0]			   COMP_ANSWER;


	wire PREV_CE;

  // Declare FSM_ADDR as reg to be driven in always block
   always @(*) begin
       // Assign a default value to avoid latches
       FSM_ADDR = 16'b0;

       if (BIST_EN == 0) begin
           FSM_ADDR = ADDR;
       end else begin
           case (BIST_MODE)
               3'b100: FSM_ADDR = BINARY_COUNTER_ADDR;
               3'b010: FSM_ADDR = GRAY_COUNTER_ADDR;
               3'b001: FSM_ADDR = LFSR_ADDR;
               default: FSM_ADDR = 16'b0; // Default case for undefined BIST_MODE
           endcase
       end
   end

	//DATA MUX
	always @(*) begin
		MEM_IDATA = 8'b0;

		  if (BIST_EN == 0) begin	
				MEM_IDATA = IDATA;	
	 	end else begin
				case (BIST_MODE)
						  3'b100: MEM_IDATA = TOGGLED_DATA;
						  3'b010: MEM_IDATA = TOGGLED_DATA;
						  3'b001: MEM_IDATA = LFSR_DATA;
						  default: MEM_IDATA = 8'b0;
				endcase
	 end
	 end

   always @(*) begin
       // Assign a default value to avoid latches
       COMP_ANSWER = 8'b0;
           case (BIST_MODE)
						  3'b100: COMP_ANSWER = TOGGLED_DATA;
						  3'b010: COMP_ANSWER = TOGGLED_DATA;
						  3'b001: COMP_ANSWER = LFSR_DATA;
           endcase
       end



		 assign ODATA = MEM_ODATA;
	//////////////////////////////////////////////

	BINARY_COUNTER_16B
		UBINARY_COUNTER_16B
			(
			.clk (CE),
			.rstn (RSTN),
			.en (BIST_MODE[2]),
			.binary (BINARY_COUNTER_ADDR));	  



	GRAY_COUNTER_16B
		UGRAY_COUNTER_16B
			(
			.clk(CE),
			.rstn(RSTN),
			.en (BIST_MODE[1]),
			.gray(GRAY_COUNTER_ADDR));

	TOGGLE_DATA_8B
		UTOGGLE_DATA_8B
			(
			.clk(PREV_CE),
			.rstn(RSTN),
			.en (BIST_MODE[2:1]),
 			.data(TOGGLED_DATA[7:0]));


	LFSR_16B
		ULFSR_16B
		(
		.clk(CE),
		.rstn(RSTN),
		.en (BIST_MODE[0]),
		.out(LFSR_ADDR));

	LFSR_8B
		ULFSR_8B
		(
				  .clk(PREV_CE),
				  .rstn(RSTN),
				  .en(BIST_MODE[0]),
		.out(LFSR_DATA));


	COMP_8B
		UCOMP_8B
		(
				  .CE(MEM_CE),
				  .rstn(RSTN),
				  .en(OEB),
				  .BIST_EN(BIST_EN),
				  .BIST_MODE(BIST_MODE),
				  .ODATA(ODATA),
				  .ANSWER(COMP_ANSWER),
				  .BIST_PASS(BIST_PASS));
	////////////////////////////////////////////////
	



   ////////////////////////////////////////////////
   // FSM CONFIGRATION
   ////////////////////////////////////////////////
   FSM
     UFSM
       (
        // Outputs
        .MEM_ADDR (MEM_ADDR[9:0]),
        .MEM_CE (MEM_CE),
        .MEM_WEB (MEM_WEB),
        .MEM_OEB (MEM_OEB[63:0]),
        .MEM_CSB (MEM_CSB[63:0]),
        // Inputs
        .CLK                            (CLK),
        .RSTN                           (RSTN),
        .ADDR								    (FSM_ADDR[15:0]),
        .CE                             (CE),
        .CSB                            (CSB),
        .WEB                            (WEB),
        .BISR_EN                        (BISR_EN),
        .OEB                            (OEB),
        .PREV_CE                        (PREV_CE));

   ////////////////////////////////////////////////
         // SRAM CONFIGRATION
   ////////////////////////////////////////////////
   SRAM64KB
     USRAM
       (/*AUTOINST*/
        // Outputs
        .ODATA                          (MEM_ODATA[7:0]),
        // Inputs
        .MEM_ADDR                       (MEM_ADDR[9:0]),
        .MEM_CE                         (MEM_CE),
        .MEM_WEB                        (MEM_WEB),
        .MEM_OEB                        (MEM_OEB[63:0]),
        .MEM_CSB                        (MEM_CSB[63:0]),
        .MEM_IDATA                      (MEM_IDATA[7:0]));

		  endmodule
