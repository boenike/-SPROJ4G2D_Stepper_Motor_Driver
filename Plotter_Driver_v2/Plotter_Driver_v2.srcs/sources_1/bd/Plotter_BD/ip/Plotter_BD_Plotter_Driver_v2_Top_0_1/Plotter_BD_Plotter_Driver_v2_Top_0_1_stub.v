// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May 28 15:26:25 2025
// Host        : BoenikeLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/benci/Documents/University/SEM4/SPROJ4/Software/SPROJ4G2D_Plotter_Driver/Plotter_Driver_v2/Plotter_Driver_v2.srcs/sources_1/bd/Plotter_BD/ip/Plotter_BD_Plotter_Driver_v2_Top_0_1/Plotter_BD_Plotter_Driver_v2_Top_0_1_stub.v
// Design      : Plotter_BD_Plotter_Driver_v2_Top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Plotter_Driver_v2_Top,Vivado 2019.1" *)
module Plotter_BD_Plotter_Driver_v2_Top_0_1(GCK, GPIO_IN, OUT_1, OUT_2, PWM_OUT)
/* synthesis syn_black_box black_box_pad_pin="GCK,GPIO_IN[5:0],OUT_1[7:0],OUT_2[7:0],PWM_OUT" */;
  input GCK;
  input [5:0]GPIO_IN;
  output [7:0]OUT_1;
  output [7:0]OUT_2;
  output PWM_OUT;
endmodule
