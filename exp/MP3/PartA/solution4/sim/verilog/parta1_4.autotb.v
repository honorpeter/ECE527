// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

 `timescale 1ns/1ps


`define AUTOTB_DUT      parta1_4
`define AUTOTB_DUT_INST AESL_inst_parta1_4
`define AUTOTB_TOP      apatb_parta1_4_top
`define AUTOTB_LAT_RESULT_FILE "parta1_4.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "parta1_4.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_parta1_4_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_A AESL_autofifo_A
`define AESL_FIFO_INST_A AESL_autofifo_inst_A
`define AESL_MEM_B AESL_automem_B
`define AESL_MEM_INST_B mem_inst_B
`define AESL_MEM_C AESL_automem_C
`define AESL_MEM_INST_C mem_inst_C
`define AESL_DEPTH_mA 1
`define AESL_DEPTH_nA 1
`define AESL_DEPTH_mB 1
`define AESL_DEPTH_nB 1
`define AESL_DEPTH_mC 1
`define AESL_DEPTH_nC 1
`define AUTOTB_TVIN_A  "../tv/cdatafile/c.parta1_4.autotvin_A.dat"
`define AUTOTB_TVIN_B  "../tv/cdatafile/c.parta1_4.autotvin_B.dat"
`define AUTOTB_TVIN_C  "../tv/cdatafile/c.parta1_4.autotvin_C.dat"
`define AUTOTB_TVIN_nA  "../tv/cdatafile/c.parta1_4.autotvin_nA.dat"
`define AUTOTB_TVIN_mC  "../tv/cdatafile/c.parta1_4.autotvin_mC.dat"
`define AUTOTB_TVIN_nC  "../tv/cdatafile/c.parta1_4.autotvin_nC.dat"
`define AUTOTB_TVIN_A_out_wrapc  "../tv/rtldatafile/rtl.parta1_4.autotvin_A.dat"
`define AUTOTB_TVIN_B_out_wrapc  "../tv/rtldatafile/rtl.parta1_4.autotvin_B.dat"
`define AUTOTB_TVIN_C_out_wrapc  "../tv/rtldatafile/rtl.parta1_4.autotvin_C.dat"
`define AUTOTB_TVIN_nA_out_wrapc  "../tv/rtldatafile/rtl.parta1_4.autotvin_nA.dat"
`define AUTOTB_TVIN_mC_out_wrapc  "../tv/rtldatafile/rtl.parta1_4.autotvin_mC.dat"
`define AUTOTB_TVIN_nC_out_wrapc  "../tv/rtldatafile/rtl.parta1_4.autotvin_nC.dat"
`define AUTOTB_TVOUT_C  "../tv/cdatafile/c.parta1_4.autotvout_C.dat"
`define AUTOTB_TVOUT_C_out_wrapc  "../tv/rtldatafile/rtl.parta1_4.autotvout_C.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 27;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_A = 10000;
parameter LENGTH_B = 10000;
parameter LENGTH_C = 10000;
parameter LENGTH_nA = 1;
parameter LENGTH_mC = 1;
parameter LENGTH_nC = 1;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] A_dout;
wire  A_empty_n;
wire  A_read;
wire [13 : 0] B_address0;
wire  B_ce0;
wire [31 : 0] B_q0;
wire [13 : 0] C_address0;
wire  C_ce0;
wire  C_we0;
wire [31 : 0] C_d0;
wire [31 : 0] C_q0;
wire [31 : 0] mA;
wire [31 : 0] nA;
wire [31 : 0] mB;
wire [31 : 0] nB;
wire [31 : 0] mC;
wire [31 : 0] nC;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .A_dout(A_dout),
    .A_empty_n(A_empty_n),
    .A_read(A_read),
    .B_address0(B_address0),
    .B_ce0(B_ce0),
    .B_q0(B_q0),
    .C_address0(C_address0),
    .C_ce0(C_ce0),
    .C_we0(C_we0),
    .C_d0(C_d0),
    .C_q0(C_q0),
    .mA(mA),
    .nA(nA),
    .mB(mB),
    .nB(nB),
    .mC(mC),
    .nC(nC));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation A

wire fifoA_rd;
wire [31 : 0] fifoA_dout;
wire fifoA_empty_n;
wire fifoA_ready;
wire fifoA_done;
reg [31:0] ap_c_n_tvin_trans_num_A;
reg A_ready_reg;

`AESL_FIFO_A `AESL_FIFO_INST_A (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoA_rd),
    .if_dout      (fifoA_dout),
    .if_empty_n   (fifoA_empty_n),
    .ready        (fifoA_ready),
    .done         (fifoA_done)
);

// Assignment between dut and fifoA

// Assign input of fifoA
assign      fifoA_rd        =   A_read & A_empty_n;
assign    fifoA_ready   =   ready;
assign    fifoA_done    =   0;
// Assign input of dut
assign      A_dout       =   fifoA_dout;
reg   reg_fifoA_empty_n;
initial begin : gen_reg_fifoA_empty_n_process
    integer proc_rand;
    reg_fifoA_empty_n = fifoA_empty_n;
    while (1) begin
        @ (fifoA_empty_n);
        reg_fifoA_empty_n = fifoA_empty_n;
    end
end

assign      A_empty_n    =   reg_fifoA_empty_n;


//------------------------arrayB Instantiation--------------

// The input and output of arrayB
wire    arrayB_ce0, arrayB_ce1;
wire    arrayB_we0, arrayB_we1;
wire    [13 : 0]    arrayB_address0, arrayB_address1;
wire    [31 : 0]    arrayB_din0, arrayB_din1;
wire    [31 : 0]    arrayB_dout0, arrayB_dout1;
wire    arrayB_ready;
wire    arrayB_done;

`AESL_MEM_B `AESL_MEM_INST_B(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_ce0),
    .we0        (arrayB_we0),
    .address0   (arrayB_address0),
    .din0       (arrayB_din0),
    .dout0      (arrayB_dout0),
    .ce1        (arrayB_ce1),
    .we1        (arrayB_we1),
    .address1   (arrayB_address1),
    .din1       (arrayB_din1),
    .dout1      (arrayB_dout1),
    .ready      (arrayB_ready),
    .done    (arrayB_done)
);

// Assignment between dut and arrayB
assign arrayB_address0 = B_address0;
assign arrayB_ce0 = B_ce0;
assign B_q0 = arrayB_dout0;
assign arrayB_we0 = 0;
assign arrayB_din0 = 0;
assign arrayB_we1 = 0;
assign arrayB_din1 = 0;
assign arrayB_ready=    ready;
assign arrayB_done = 0;


//------------------------arrayC Instantiation--------------

// The input and output of arrayC
wire    arrayC_ce0, arrayC_ce1;
wire    arrayC_we0, arrayC_we1;
wire    [13 : 0]    arrayC_address0, arrayC_address1;
wire    [31 : 0]    arrayC_din0, arrayC_din1;
wire    [31 : 0]    arrayC_dout0, arrayC_dout1;
wire    arrayC_ready;
wire    arrayC_done;

`AESL_MEM_C `AESL_MEM_INST_C(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayC_ce0),
    .we0        (arrayC_we0),
    .address0   (arrayC_address0),
    .din0       (arrayC_din0),
    .dout0      (arrayC_dout0),
    .ce1        (arrayC_ce1),
    .we1        (arrayC_we1),
    .address1   (arrayC_address1),
    .din1       (arrayC_din1),
    .dout1      (arrayC_dout1),
    .ready      (arrayC_ready),
    .done    (arrayC_done)
);

// Assignment between dut and arrayC
assign arrayC_address0 = C_address0;
assign arrayC_ce0 = C_ce0;
assign C_q0 = arrayC_dout0;
assign arrayC_we0 = C_we0;
assign arrayC_din0 = C_d0;
assign arrayC_we1 = 0;
assign arrayC_din1 = 0;
assign arrayC_ready= ready;
assign arrayC_done = interface_done;


// The signal of port mA
reg [31: 0] AESL_REG_mA = 0;
assign mA = AESL_REG_mA;

// The signal of port nA
reg [31: 0] AESL_REG_nA = 0;
assign nA = AESL_REG_nA;
initial begin : read_file_process_nA
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_nA,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_nA);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_nA);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port mB
reg [31: 0] AESL_REG_mB = 0;
assign mB = AESL_REG_mB;

// The signal of port nB
reg [31: 0] AESL_REG_nB = 0;
assign nB = AESL_REG_nB;

// The signal of port mC
reg [31: 0] AESL_REG_mC = 0;
assign mC = AESL_REG_mC;
initial begin : read_file_process_mC
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_mC,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_mC);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_mC);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port nC
reg [31: 0] AESL_REG_nC = 0;
assign nC = AESL_REG_nC;
initial begin : read_file_process_nC
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_nC,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_nC);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_nC);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_A;
reg [31:0] size_A;
reg [31:0] size_A_backup;
reg end_B;
reg [31:0] size_B;
reg [31:0] size_B_backup;
reg end_C;
reg [31:0] size_C;
reg [31:0] size_C_backup;
reg end_nA;
reg [31:0] size_nA;
reg [31:0] size_nA_backup;
reg end_mC;
reg [31:0] size_mC;
reg [31:0] size_mC_backup;
reg end_nC;
reg [31:0] size_nC;
reg [31:0] size_nC_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_A_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    A_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_A > internal_trans_num) begin
            A_ready_reg <= 1;
            @(posedge AESL_clock);
            A_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    A_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_A "../tv/stream_size/stream_size_in_A.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_A
        integer fp_A;
        reg [127:0] token_A;
        integer ret;
        
        ap_c_n_tvin_trans_num_A = 0;
        end_A = 0;
        wait (AESL_reset === 0);
        
        fp_A = $fopen(`AUTOTB_TVIN_A, "r");
        if(fp_A == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A);
            $finish;
        end
        read_token(fp_A, token_A); // should be [[[runtime]]]
        if (token_A != "[[[runtime]]]") begin
            $display("ERROR: token_A != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_A = ap_c_n_tvin_trans_num_A + 1;
        read_token(fp_A, token_A); // should be [[transaction]] or [[[/runtime]]]
        if (token_A == "[[[/runtime]]]") begin
            $fclose(fp_A);
            end_A = 1;
        end else begin
            end_A = 0;
            read_token(fp_A, token_A); // should be transaction number
            read_token(fp_A, token_A);
        end
        while (token_A == "[[/transaction]]" && end_A == 0) begin
            ap_c_n_tvin_trans_num_A = ap_c_n_tvin_trans_num_A + 1;
            read_token(fp_A, token_A); // should be [[transaction]] or [[[/runtime]]]
            if (token_A == "[[[/runtime]]]") begin
                $fclose(fp_A);
                end_A = 1;
            end else begin
                end_A = 0;
                read_token(fp_A, token_A); // should be transaction number
                read_token(fp_A, token_A);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_A == 0) begin
                if (A_read == 1) begin
                    read_token(fp_A, token_A);
                    while (token_A == "[[/transaction]]" && end_A == 0) begin
                        ap_c_n_tvin_trans_num_A = ap_c_n_tvin_trans_num_A + 1;
                        read_token(fp_A, token_A); // should be [[transaction]] or [[[/runtime]]]
                        if (token_A == "[[[/runtime]]]") begin
                            $fclose(fp_A);
                            end_A = 1;
                        end else begin
                            end_A = 0;
                            read_token(fp_A, token_A); // should be transaction number
                            read_token(fp_A, token_A);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_A = ap_c_n_tvin_trans_num_A + 1;
            end
        end
    end
    

reg dump_tvout_finish_C;

initial begin : dump_tvout_runtime_sign_C
    integer fp;
    dump_tvout_finish_C = 0;
    fp = $fopen(`AUTOTB_TVOUT_C_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_C_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_C = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
