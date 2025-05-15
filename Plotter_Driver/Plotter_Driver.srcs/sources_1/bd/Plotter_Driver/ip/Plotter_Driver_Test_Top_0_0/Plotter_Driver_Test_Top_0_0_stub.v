// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu May 15 16:10:58 2025
// Host        : BoenikeLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/benci/Documents/University/SEM4/SPROJ4/Software/Plotter_Driver/Plotter_Driver.srcs/sources_1/bd/Plotter_Driver/ip/Plotter_Driver_Test_Top_0_0/Plotter_Driver_Test_Top_0_0_stub.v
// Design      : Plotter_Driver_Test_Top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Test_Top,Vivado 2019.1" *)
module Plotter_Driver_Test_Top_0_0(GCK, GPIO_IN, GPIO_OUT, OUT_1, OUT_2, PWM_OUT)
/* synthesis syn_black_box black_box_pad_pin="GCK,GPIO_IN[5:0],GPIO_OUT[1:0],OUT_1[7:0],OUT_2[7:0],PWM_OUT" */;
  input GCK;
  input [5:0]GPIO_IN;
  output [1:0]GPIO_OUT;
  output [7:0]OUT_1;
  output [7:0]OUT_2;
  output PWM_OUT;
endmodule
