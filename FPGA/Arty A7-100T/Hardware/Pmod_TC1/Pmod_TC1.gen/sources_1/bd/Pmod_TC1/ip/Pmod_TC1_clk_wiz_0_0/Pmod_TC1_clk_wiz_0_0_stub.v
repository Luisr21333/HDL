// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Apr  3 19:06:17 2023
// Host        : DESKTOP-AJV8A0J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/luisr/Desktop/FPGA/Hardware/Arty
//               A7-100T/Pmod_TC1/Pmod_TC1.gen/sources_1/bd/Pmod_TC1/ip/Pmod_TC1_clk_wiz_0_0/Pmod_TC1_clk_wiz_0_0_stub.v}
// Design      : Pmod_TC1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Pmod_TC1_clk_wiz_0_0(clk_out1, clk_out2, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,resetn,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input resetn;
  output locked;
  input clk_in1;
endmodule
