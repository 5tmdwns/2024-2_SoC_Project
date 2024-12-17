module BISR(
    input  wire clk,
    input  wire MEM_CE,
    input  wire rstn,
    input  wire WEB,
    input  wire OEB,
    input  wire [15:0] addr, // 16-bit address for 64KB SRAM
    input  wire [7:0] data_in,
    output wire [7:0] data_out,
    input  wire BIST_PASS,
    input  wire BIST_EN,
    input  wire BISR_EN, // Enable BISR functionality
    output wire [9:0] spare_addr_MEM,
    output reg spare_enable,
    output wire [3:0] spare_CSB,
    output reg spare_WEB,
    output reg [3:0] spare_OEB
);

// Register to store faulty addresses
/* pragma attribute faulty_addr preserve_array */
/* pragma attribute faulty_addr depth 8 */
reg [15:0] faulty_addr[4095:0];
reg [11:0] faulty_addr_index;
reg spare_enable_BISR;
reg [15:0] addr_redundancy;
reg [7:0] data_in_BISR;
reg [7:0] data_in_BISR_DELAY;

reg BIST_PASS_BISR;
reg [9:0] spare_addr;
reg [9:0] spare_addr_BISR;

reg WEB_BISR;
reg OEB_BISR;

reg [3:0] spare_CSB_NODELAY;
reg [3:0] spare_CSB_DELAY;
wire [4095:0] match;
wire match_any;
reg [11:0] match_index;

// Sequential updates gated by BISR_EN
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        addr_redundancy <= 0;
        data_in_BISR <= 0;
        data_in_BISR_DELAY <= 0;
        BIST_PASS_BISR <= 0;
        spare_addr_BISR <= 0;
        WEB_BISR <= 0;
        OEB_BISR <= 0;
        spare_CSB_DELAY <= 0;
    end else if (BISR_EN) begin
        addr_redundancy <= addr;
        data_in_BISR <= data_in;
        data_in_BISR_DELAY <= data_in_BISR;
        BIST_PASS_BISR <= BIST_PASS;
        spare_addr_BISR <= spare_addr;
        WEB_BISR <= WEB;
        OEB_BISR <= OEB;
        spare_CSB_DELAY <= spare_CSB_NODELAY;
    end else begin
        // Ensure deterministic behavior when BISR_EN is 0
        addr_redundancy <= 0;
        data_in_BISR <= 0;
        data_in_BISR_DELAY <= 0;
        BIST_PASS_BISR <= 0;
        spare_addr_BISR <= 0;
        WEB_BISR <= 0;
        OEB_BISR <= 0;
        spare_CSB_DELAY <= 0;
    end
end

integer i;
always @(posedge BIST_PASS or negedge rstn) begin
    if (!rstn) begin
        faulty_addr_index <= 12'b0;
        for (i = 0; i < 4096; i = i + 1) begin
            faulty_addr[i] <= 16'b0;
        end
    end else if (BISR_EN) begin
        if (faulty_addr_index < 4096) begin
            faulty_addr[faulty_addr_index] <= addr_redundancy;
            faulty_addr_index <= faulty_addr_index + 1;
        end
    end
end

// Debugging faulty addresses
always @(posedge BIST_PASS_BISR) begin
    if (BISR_EN) begin
        $display("Faulty Address[0]: %h", faulty_addr[0]);
        $display("Faulty Address[1]: %h", faulty_addr[1]);
		  $display("Faulty Address[2]: %h", faulty_addr[2]);
	  	  $display("Faulty Address[3]: %h", faulty_addr[3]);
	     $display("Faulty Address[4]: %h", faulty_addr[4]);
	     $display("Faulty Address[5]: %h", faulty_addr[5]);
	     $display("Faulty Address[6]: %h", faulty_addr[6]);
    end
end

// Update spare_enable gated by BISR_EN
always @(posedge MEM_CE or negedge rstn) begin
    if (!rstn) begin
        spare_enable <= 0;
    end else if (BISR_EN) begin
        spare_enable <= spare_enable_BISR;
    end else begin
        spare_enable <= 0;
    end
end

// Comparator to check if incoming address is faulty
genvar k;
generate
    for (k = 0; k < 4096; k = k + 1) begin
        assign match[k] = BISR_EN && (addr_redundancy == faulty_addr[k]);
    end
endgenerate

// OR reduction to find any match
assign match_any = BISR_EN && |match;

integer j;
// Redirection logic gated by BISR_EN
always @(*) begin

    match_index <= 12'b0;

    if (!rstn) begin
        spare_enable_BISR <= 1'b0;
        match_index <= 12'b0;
    end else if (BISR_EN && match_any) begin
        // Find the first matching faulty address and redirect
        for (j = 0; j < 4096; j = j + 1) begin
            if (match[j]) begin
                match_index <= j;
            end
        end
		  spare_enable_BISR <= |match;
    end else begin
        spare_enable_BISR <= 1'b0;
        match_index <= 12'b0;
    end
end

// Map match_index to spare_addr
always @(*) begin
    spare_addr = 10'b0;
    spare_CSB_NODELAY = 4'b1111;

    if (BISR_EN) begin
        spare_addr = match_index[9:0];

        if (BIST_PASS || ~BIST_EN) begin
            if (match_index < 1024) begin
                spare_CSB_NODELAY = 4'b1110;
            end else if (match_index < 2048) begin
                spare_CSB_NODELAY = 4'b1101;
            end else if (match_index < 3072) begin
                spare_CSB_NODELAY = 4'b1011;
            end else if (match_index < 4096) begin
                spare_CSB_NODELAY = 4'b0111;
            end
        end
    end
end

assign spare_addr_MEM = (BIST_PASS && BISR_EN) ? spare_addr_BISR : spare_addr;
assign spare_CSB = (BIST_PASS && BISR_EN) ? spare_CSB_DELAY : spare_CSB_NODELAY;
assign data_out = (BIST_PASS && BISR_EN) ? data_in_BISR_DELAY : data_in_BISR;

// Update spare_WEB and spare_OEB logic
always @(*) begin
    spare_WEB = 1;
	 spare_OEB = 4'b1111;

    if (BISR_EN && (BIST_PASS || !WEB_BISR)) begin
        spare_WEB = 0;
    end

    if (BISR_EN && !BIST_PASS && !OEB_BISR && !BIST_EN) begin
        if (match_index < 1024) begin
            spare_OEB = 4'b1110;
        end else if (match_index < 2048) begin
            spare_OEB = 4'b1101;
        end else if (match_index < 3072) begin
            spare_OEB = 4'b1011;
        end else if (match_index < 4096) begin
            spare_OEB = 4'b0111;
        end
    end
end

endmodule

