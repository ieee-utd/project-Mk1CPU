// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr  4 04:05:13 2021
// Host        : DESKTOP-C2974B1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/uncoo/Documents/Source/Verilog/instruction_fetch/instruction_fetch.sim/sim_1/synth/timing/xsim/instr_fetch_testbench_time_synth.v
// Design      : instruction_fetch
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module instruction_fetch
   (ex_mem_pc,
    ex_mem_npc,
    if_id_instr,
    if_id_npc);
  input ex_mem_pc;
  input [31:0]ex_mem_npc;
  output [31:0]if_id_instr;
  output [31:0]if_id_npc;

  wire [31:0]ex_mem_npc;
  wire [3:0]ex_mem_npc_IBUF;
  wire ex_mem_pc;
  wire ex_mem_pc_IBUF;
  wire [31:0]if_id_instr;
  wire [3:0]if_id_instr_OBUF;
  wire \if_id_instr_OBUF[31]_inst_i_2_n_0 ;
  wire [31:0]if_id_npc;
  wire [0:0]if_id_npc_OBUF;

initial begin
 $sdf_annotate("instr_fetch_testbench_time_synth.sdf",,,,"tool_control");
end
  IBUF \ex_mem_npc_IBUF[0]_inst 
       (.I(ex_mem_npc[0]),
        .O(ex_mem_npc_IBUF[0]));
  IBUF \ex_mem_npc_IBUF[1]_inst 
       (.I(ex_mem_npc[1]),
        .O(ex_mem_npc_IBUF[1]));
  IBUF \ex_mem_npc_IBUF[2]_inst 
       (.I(ex_mem_npc[2]),
        .O(ex_mem_npc_IBUF[2]));
  IBUF \ex_mem_npc_IBUF[3]_inst 
       (.I(ex_mem_npc[3]),
        .O(ex_mem_npc_IBUF[3]));
  IBUF ex_mem_pc_IBUF_inst
       (.I(ex_mem_pc),
        .O(ex_mem_pc_IBUF));
  OBUF \if_id_instr_OBUF[0]_inst 
       (.I(if_id_instr_OBUF[0]),
        .O(if_id_instr[0]));
  OBUF \if_id_instr_OBUF[10]_inst 
       (.I(1'b0),
        .O(if_id_instr[10]));
  OBUF \if_id_instr_OBUF[11]_inst 
       (.I(1'b0),
        .O(if_id_instr[11]));
  OBUF \if_id_instr_OBUF[12]_inst 
       (.I(1'b0),
        .O(if_id_instr[12]));
  OBUF \if_id_instr_OBUF[13]_inst 
       (.I(1'b0),
        .O(if_id_instr[13]));
  OBUF \if_id_instr_OBUF[14]_inst 
       (.I(1'b0),
        .O(if_id_instr[14]));
  OBUF \if_id_instr_OBUF[15]_inst 
       (.I(1'b0),
        .O(if_id_instr[15]));
  OBUF \if_id_instr_OBUF[16]_inst 
       (.I(1'b0),
        .O(if_id_instr[16]));
  OBUF \if_id_instr_OBUF[17]_inst 
       (.I(1'b0),
        .O(if_id_instr[17]));
  OBUF \if_id_instr_OBUF[18]_inst 
       (.I(1'b0),
        .O(if_id_instr[18]));
  OBUF \if_id_instr_OBUF[19]_inst 
       (.I(1'b0),
        .O(if_id_instr[19]));
  OBUF \if_id_instr_OBUF[1]_inst 
       (.I(if_id_instr_OBUF[1]),
        .O(if_id_instr[1]));
  OBUF \if_id_instr_OBUF[20]_inst 
       (.I(1'b0),
        .O(if_id_instr[20]));
  OBUF \if_id_instr_OBUF[21]_inst 
       (.I(1'b0),
        .O(if_id_instr[21]));
  OBUF \if_id_instr_OBUF[22]_inst 
       (.I(1'b0),
        .O(if_id_instr[22]));
  OBUF \if_id_instr_OBUF[23]_inst 
       (.I(1'b0),
        .O(if_id_instr[23]));
  OBUF \if_id_instr_OBUF[24]_inst 
       (.I(1'b0),
        .O(if_id_instr[24]));
  OBUF \if_id_instr_OBUF[25]_inst 
       (.I(1'b0),
        .O(if_id_instr[25]));
  OBUF \if_id_instr_OBUF[26]_inst 
       (.I(1'b0),
        .O(if_id_instr[26]));
  OBUF \if_id_instr_OBUF[27]_inst 
       (.I(1'b0),
        .O(if_id_instr[27]));
  OBUF \if_id_instr_OBUF[28]_inst 
       (.I(if_id_instr_OBUF[0]),
        .O(if_id_instr[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \if_id_instr_OBUF[28]_inst_i_1 
       (.I0(ex_mem_pc_IBUF),
        .I1(ex_mem_npc_IBUF[0]),
        .I2(\if_id_instr_OBUF[31]_inst_i_2_n_0 ),
        .O(if_id_instr_OBUF[0]));
  OBUF \if_id_instr_OBUF[29]_inst 
       (.I(if_id_instr_OBUF[1]),
        .O(if_id_instr[29]));
  LUT6 #(
    .INIT(64'h0000AABAF0F0F0F0)) 
    \if_id_instr_OBUF[29]_inst_i_1 
       (.I0(ex_mem_npc_IBUF[1]),
        .I1(ex_mem_npc_IBUF[2]),
        .I2(\if_id_instr_OBUF[31]_inst_i_2_n_0 ),
        .I3(ex_mem_npc_IBUF[0]),
        .I4(ex_mem_npc_IBUF[3]),
        .I5(ex_mem_pc_IBUF),
        .O(if_id_instr_OBUF[1]));
  OBUF \if_id_instr_OBUF[2]_inst 
       (.I(if_id_instr_OBUF[2]),
        .O(if_id_instr[2]));
  OBUF \if_id_instr_OBUF[30]_inst 
       (.I(if_id_instr_OBUF[2]),
        .O(if_id_instr[30]));
  LUT3 #(
    .INIT(8'h20)) 
    \if_id_instr_OBUF[30]_inst_i_1 
       (.I0(ex_mem_npc_IBUF[2]),
        .I1(ex_mem_npc_IBUF[3]),
        .I2(ex_mem_pc_IBUF),
        .O(if_id_instr_OBUF[2]));
  OBUF \if_id_instr_OBUF[31]_inst 
       (.I(if_id_instr_OBUF[3]),
        .O(if_id_instr[31]));
  LUT6 #(
    .INIT(64'hFC0CFC0CFC0CFC4C)) 
    \if_id_instr_OBUF[31]_inst_i_1 
       (.I0(ex_mem_npc_IBUF[0]),
        .I1(\if_id_instr_OBUF[31]_inst_i_2_n_0 ),
        .I2(ex_mem_pc_IBUF),
        .I3(ex_mem_npc_IBUF[3]),
        .I4(ex_mem_npc_IBUF[2]),
        .I5(ex_mem_npc_IBUF[1]),
        .O(if_id_instr_OBUF[3]));
  LUT2 #(
    .INIT(4'hD)) 
    \if_id_instr_OBUF[31]_inst_i_2 
       (.I0(\if_id_instr_OBUF[31]_inst_i_2_n_0 ),
        .I1(ex_mem_pc_IBUF),
        .O(\if_id_instr_OBUF[31]_inst_i_2_n_0 ));
  OBUF \if_id_instr_OBUF[3]_inst 
       (.I(if_id_instr_OBUF[3]),
        .O(if_id_instr[3]));
  OBUF \if_id_instr_OBUF[4]_inst 
       (.I(if_id_instr_OBUF[0]),
        .O(if_id_instr[4]));
  OBUF \if_id_instr_OBUF[5]_inst 
       (.I(if_id_instr_OBUF[1]),
        .O(if_id_instr[5]));
  OBUF \if_id_instr_OBUF[6]_inst 
       (.I(if_id_instr_OBUF[2]),
        .O(if_id_instr[6]));
  OBUF \if_id_instr_OBUF[7]_inst 
       (.I(if_id_instr_OBUF[3]),
        .O(if_id_instr[7]));
  OBUF \if_id_instr_OBUF[8]_inst 
       (.I(1'b0),
        .O(if_id_instr[8]));
  OBUF \if_id_instr_OBUF[9]_inst 
       (.I(1'b0),
        .O(if_id_instr[9]));
  OBUF \if_id_npc_OBUF[0]_inst 
       (.I(if_id_npc_OBUF),
        .O(if_id_npc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \if_id_npc_OBUF[0]_inst_i_1 
       (.I0(\if_id_instr_OBUF[31]_inst_i_2_n_0 ),
        .I1(ex_mem_npc_IBUF[0]),
        .I2(ex_mem_pc_IBUF),
        .O(if_id_npc_OBUF));
  OBUF \if_id_npc_OBUF[10]_inst 
       (.I(1'b0),
        .O(if_id_npc[10]));
  OBUF \if_id_npc_OBUF[11]_inst 
       (.I(1'b0),
        .O(if_id_npc[11]));
  OBUF \if_id_npc_OBUF[12]_inst 
       (.I(1'b0),
        .O(if_id_npc[12]));
  OBUF \if_id_npc_OBUF[13]_inst 
       (.I(1'b0),
        .O(if_id_npc[13]));
  OBUF \if_id_npc_OBUF[14]_inst 
       (.I(1'b0),
        .O(if_id_npc[14]));
  OBUF \if_id_npc_OBUF[15]_inst 
       (.I(1'b0),
        .O(if_id_npc[15]));
  OBUF \if_id_npc_OBUF[16]_inst 
       (.I(1'b0),
        .O(if_id_npc[16]));
  OBUF \if_id_npc_OBUF[17]_inst 
       (.I(1'b0),
        .O(if_id_npc[17]));
  OBUF \if_id_npc_OBUF[18]_inst 
       (.I(1'b0),
        .O(if_id_npc[18]));
  OBUF \if_id_npc_OBUF[19]_inst 
       (.I(1'b0),
        .O(if_id_npc[19]));
  OBUF \if_id_npc_OBUF[1]_inst 
       (.I(1'b0),
        .O(if_id_npc[1]));
  OBUF \if_id_npc_OBUF[20]_inst 
       (.I(1'b0),
        .O(if_id_npc[20]));
  OBUF \if_id_npc_OBUF[21]_inst 
       (.I(1'b0),
        .O(if_id_npc[21]));
  OBUF \if_id_npc_OBUF[22]_inst 
       (.I(1'b0),
        .O(if_id_npc[22]));
  OBUF \if_id_npc_OBUF[23]_inst 
       (.I(1'b0),
        .O(if_id_npc[23]));
  OBUF \if_id_npc_OBUF[24]_inst 
       (.I(1'b0),
        .O(if_id_npc[24]));
  OBUF \if_id_npc_OBUF[25]_inst 
       (.I(1'b0),
        .O(if_id_npc[25]));
  OBUF \if_id_npc_OBUF[26]_inst 
       (.I(1'b0),
        .O(if_id_npc[26]));
  OBUF \if_id_npc_OBUF[27]_inst 
       (.I(1'b0),
        .O(if_id_npc[27]));
  OBUF \if_id_npc_OBUF[28]_inst 
       (.I(1'b0),
        .O(if_id_npc[28]));
  OBUF \if_id_npc_OBUF[29]_inst 
       (.I(1'b0),
        .O(if_id_npc[29]));
  OBUF \if_id_npc_OBUF[2]_inst 
       (.I(1'b0),
        .O(if_id_npc[2]));
  OBUF \if_id_npc_OBUF[30]_inst 
       (.I(1'b0),
        .O(if_id_npc[30]));
  OBUF \if_id_npc_OBUF[31]_inst 
       (.I(1'b0),
        .O(if_id_npc[31]));
  OBUF \if_id_npc_OBUF[3]_inst 
       (.I(1'b0),
        .O(if_id_npc[3]));
  OBUF \if_id_npc_OBUF[4]_inst 
       (.I(1'b0),
        .O(if_id_npc[4]));
  OBUF \if_id_npc_OBUF[5]_inst 
       (.I(1'b0),
        .O(if_id_npc[5]));
  OBUF \if_id_npc_OBUF[6]_inst 
       (.I(1'b0),
        .O(if_id_npc[6]));
  OBUF \if_id_npc_OBUF[7]_inst 
       (.I(1'b0),
        .O(if_id_npc[7]));
  OBUF \if_id_npc_OBUF[8]_inst 
       (.I(1'b0),
        .O(if_id_npc[8]));
  OBUF \if_id_npc_OBUF[9]_inst 
       (.I(1'b0),
        .O(if_id_npc[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
