// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu May 15 16:10:58 2025
// Host        : BoenikeLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/benci/Documents/University/SEM4/SPROJ4/Software/Plotter_Driver/Plotter_Driver.srcs/sources_1/bd/Plotter_Driver/ip/Plotter_Driver_Test_Top_0_0/Plotter_Driver_Test_Top_0_0_sim_netlist.v
// Design      : Plotter_Driver_Test_Top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Plotter_Driver_Test_Top_0_0,Test_Top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Test_Top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Plotter_Driver_Test_Top_0_0
   (GCK,
    GPIO_IN,
    GPIO_OUT,
    OUT_1,
    OUT_2,
    PWM_OUT);
  input GCK;
  input [5:0]GPIO_IN;
  output [1:0]GPIO_OUT;
  output [7:0]OUT_1;
  output [7:0]OUT_2;
  output PWM_OUT;

  wire GCK;
  wire [5:0]GPIO_IN;
  wire [1:0]GPIO_OUT;
  wire [3:0]\^OUT_1 ;
  wire [3:0]\^OUT_2 ;
  wire PWM_OUT;

  assign OUT_1[7:4] = \^OUT_1 [3:0];
  assign OUT_1[3:0] = \^OUT_1 [3:0];
  assign OUT_2[7:4] = \^OUT_2 [3:0];
  assign OUT_2[3:0] = \^OUT_2 [3:0];
  Plotter_Driver_Test_Top_0_0_Test_Top U0
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN),
        .GPIO_OUT(GPIO_OUT),
        .OUT_1(\^OUT_1 ),
        .OUT_2(\^OUT_2 ),
        .PWM_OUT(PWM_OUT));
endmodule

(* ORIG_REF_NAME = "Half_Step_State_Machine" *) 
module Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine
   (D,
    Q,
    GPIO_IN);
  output [0:0]D;
  output [2:0]Q;
  input [1:0]GPIO_IN;

  wire [0:0]D;
  wire [1:0]GPIO_IN;
  wire [2:0]Q;
  wire \current_addr[0]_i_1__0_n_0 ;
  wire \current_addr[1]_i_1__0_n_0 ;
  wire \current_addr[2]_i_1__0_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_addr[0]_i_1__0 
       (.I0(Q[0]),
        .O(\current_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \current_addr[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(GPIO_IN[1]),
        .O(\current_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \current_addr[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(GPIO_IN[1]),
        .O(\current_addr[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[0] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[1] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[2] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data[5]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Half_Step_State_Machine" *) 
module Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine_1
   (D,
    Q,
    GPIO_IN);
  output [0:0]D;
  output [2:0]Q;
  input [1:0]GPIO_IN;

  wire [0:0]D;
  wire [1:0]GPIO_IN;
  wire [2:0]Q;
  wire \current_addr[0]_i_1_n_0 ;
  wire \current_addr[1]_i_1_n_0 ;
  wire \current_addr[2]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_addr[0]_i_1 
       (.I0(Q[0]),
        .O(\current_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \current_addr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(GPIO_IN[1]),
        .O(\current_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \current_addr[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(GPIO_IN[1]),
        .O(\current_addr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[0] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[1] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[2] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data[5]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Half_Stepping_Top" *) 
module Plotter_Driver_Test_Top_0_0_Half_Stepping_Top
   (GPIO_OUT,
    OUT_1,
    GPIO_IN,
    GCK,
    \data_reg[6] );
  output [0:0]GPIO_OUT;
  output [3:0]OUT_1;
  input [1:0]GPIO_IN;
  input GCK;
  input \data_reg[6] ;

  wire [2:0]A;
  wire GCK;
  wire [1:0]GPIO_IN;
  wire [0:0]GPIO_OUT;
  wire Half_Stepper_Generator_n_0;
  wire [3:0]OUT_1;
  wire \data_reg[6] ;

  Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine_1 Half_Stepper_Generator
       (.D(Half_Stepper_Generator_n_0),
        .GPIO_IN(GPIO_IN),
        .Q(A));
  Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep_2 Next_Step_Cooldown
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[0]),
        .GPIO_OUT(GPIO_OUT));
  Plotter_Driver_Test_Top_0_0_half_step_rom_3 rom_inst
       (.D(Half_Stepper_Generator_n_0),
        .GCK(GCK),
        .OUT_1(OUT_1),
        .Q(A),
        .\data_reg[6]_0 (\data_reg[6] ));
endmodule

(* ORIG_REF_NAME = "Half_Stepping_Top" *) 
module Plotter_Driver_Test_Top_0_0_Half_Stepping_Top_0
   (GPIO_OUT,
    \GPIO_IN[4] ,
    OUT_2,
    GPIO_IN,
    GCK);
  output [0:0]GPIO_OUT;
  output \GPIO_IN[4] ;
  output [3:0]OUT_2;
  input [2:0]GPIO_IN;
  input GCK;

  wire GCK;
  wire [2:0]GPIO_IN;
  wire \GPIO_IN[4] ;
  wire [0:0]GPIO_OUT;
  wire Half_Stepper_Generator_n_0;
  wire Half_Stepper_Generator_n_1;
  wire Half_Stepper_Generator_n_2;
  wire Half_Stepper_Generator_n_3;
  wire [3:0]OUT_2;

  Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine Half_Stepper_Generator
       (.D(Half_Stepper_Generator_n_0),
        .GPIO_IN(GPIO_IN[1:0]),
        .Q({Half_Stepper_Generator_n_1,Half_Stepper_Generator_n_2,Half_Stepper_Generator_n_3}));
  Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep Next_Step_Cooldown
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[0]),
        .GPIO_OUT(GPIO_OUT));
  Plotter_Driver_Test_Top_0_0_half_step_rom rom_inst
       (.D(Half_Stepper_Generator_n_0),
        .GCK(GCK),
        .GPIO_IN(GPIO_IN[2]),
        .\GPIO_IN[4] (\GPIO_IN[4] ),
        .OUT_2(OUT_2),
        .Q({Half_Stepper_Generator_n_1,Half_Stepper_Generator_n_2,Half_Stepper_Generator_n_3}));
endmodule

(* ORIG_REF_NAME = "Next_Step_Enabler_Halfstep" *) 
module Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep
   (GPIO_OUT,
    GPIO_IN,
    GCK);
  output [0:0]GPIO_OUT;
  input [0:0]GPIO_IN;
  input GCK;

  wire GCK;
  wire [0:0]GPIO_IN;
  wire [0:0]GPIO_OUT;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[10]_i_1__0_n_0 ;
  wire \counter[11]_i_1__0_n_0 ;
  wire \counter[12]_i_1__0_n_0 ;
  wire \counter[13]_i_1__0_n_0 ;
  wire \counter[14]_i_1__0_n_0 ;
  wire \counter[15]_i_1__0_n_0 ;
  wire \counter[16]_i_1__0_n_0 ;
  wire \counter[16]_i_2__0_n_0 ;
  wire \counter[16]_i_3__0_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[4]_i_1__0_n_0 ;
  wire \counter[5]_i_1__0_n_0 ;
  wire \counter[6]_i_1__0_n_0 ;
  wire \counter[7]_i_1__0_n_0 ;
  wire \counter[8]_i_1__0_n_0 ;
  wire \counter[9]_i_1__0_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire nxt_flag_int_i_1__0_n_0;
  wire nxt_flag_int_i_2__0_n_0;
  wire nxt_flag_int_i_3__0_n_0;
  wire nxt_flag_int_i_4__0_n_0;
  wire nxt_flag_int_i_6__0_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire stp_prev;
  wire timer_active;
  wire timer_active0__0;
  wire timer_active_i_1__0_n_0;
  wire [3:3]NLW_plusOp_carry__2_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h000077F7)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[10]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__1_n_6),
        .O(\counter[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[11]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__1_n_5),
        .O(\counter[11]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[12]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__1_n_4),
        .O(\counter[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[13]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__2_n_7),
        .O(\counter[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[14]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__2_n_6),
        .O(\counter[14]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[15]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__2_n_5),
        .O(\counter[15]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_1__0 
       (.I0(timer_active0__0),
        .I1(timer_active),
        .O(\counter[16]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77F70000)) 
    \counter[16]_i_2__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(timer_active),
        .I5(timer_active0__0),
        .O(\counter[16]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[16]_i_3__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__2_n_4),
        .O(\counter[16]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry_n_7),
        .O(\counter[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[2]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry_n_6),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[3]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry_n_5),
        .O(\counter[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[4]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry_n_4),
        .O(\counter[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[5]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__0_n_7),
        .O(\counter[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[6]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__0_n_6),
        .O(\counter[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[7]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__0_n_5),
        .O(\counter[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[8]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__0_n_4),
        .O(\counter[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[9]_i_1__0 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(plusOp_carry__1_n_7),
        .O(\counter[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[10]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[11]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[12]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[12] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[13]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[13] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[14]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[14] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[15]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[15] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[16]_i_3__0_n_0 ),
        .Q(\counter_reg_n_0_[16] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[4]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(\counter[16]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(GCK),
        .CE(\counter[16]_i_2__0_n_0 ),
        .D(\counter[9]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[9] ),
        .R(\counter[16]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA200FFFFA200A200)) 
    nxt_flag_int_i_1__0
       (.I0(nxt_flag_int_i_2__0_n_0),
        .I1(nxt_flag_int_i_3__0_n_0),
        .I2(nxt_flag_int_i_4__0_n_0),
        .I3(timer_active),
        .I4(timer_active0__0),
        .I5(GPIO_OUT),
        .O(nxt_flag_int_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    nxt_flag_int_i_2__0
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .O(nxt_flag_int_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h1055FFFFFFFFFFFF)) 
    nxt_flag_int_i_3__0
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(nxt_flag_int_i_6__0_n_0),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\counter_reg_n_0_[9] ),
        .O(nxt_flag_int_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    nxt_flag_int_i_4__0
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[13] ),
        .O(nxt_flag_int_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    nxt_flag_int_i_5__0
       (.I0(GPIO_IN),
        .I1(stp_prev),
        .O(timer_active0__0));
  LUT6 #(
    .INIT(64'h0111FFFFFFFFFFFF)) 
    nxt_flag_int_i_6__0
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[5] ),
        .I5(\counter_reg_n_0_[4] ),
        .O(nxt_flag_int_i_6__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    nxt_flag_int_reg
       (.C(GCK),
        .CE(1'b1),
        .D(nxt_flag_int_i_1__0_n_0),
        .Q(GPIO_OUT),
        .R(1'b0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3],plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    stp_prev_reg
       (.C(GCK),
        .CE(1'b1),
        .D(GPIO_IN),
        .Q(stp_prev),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h77F7FFFF77F70000)) 
    timer_active_i_1__0
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(nxt_flag_int_i_3__0_n_0),
        .I3(nxt_flag_int_i_4__0_n_0),
        .I4(timer_active),
        .I5(timer_active0__0),
        .O(timer_active_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    timer_active_reg
       (.C(GCK),
        .CE(1'b1),
        .D(timer_active_i_1__0_n_0),
        .Q(timer_active),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Next_Step_Enabler_Halfstep" *) 
module Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep_2
   (GPIO_OUT,
    GPIO_IN,
    GCK);
  output [0:0]GPIO_OUT;
  input [0:0]GPIO_IN;
  input GCK;

  wire GCK;
  wire [0:0]GPIO_IN;
  wire [0:0]GPIO_OUT;
  wire [16:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire nxt_flag_int_i_1_n_0;
  wire nxt_flag_int_i_2_n_0;
  wire nxt_flag_int_i_3_n_0;
  wire nxt_flag_int_i_4_n_0;
  wire nxt_flag_int_i_6_n_0;
  wire [16:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire stp_prev;
  wire timer_active;
  wire timer_active0__0;
  wire timer_active_i_1_n_0;
  wire [3:3]NLW_plusOp_carry__2_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h000077F7)) 
    \counter[0]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[10]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[10]),
        .O(\counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[11]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[11]),
        .O(\counter[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[12]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[12]),
        .O(\counter[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[13]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[13]),
        .O(\counter[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[14]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[14]),
        .O(\counter[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[15]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[15]),
        .O(\counter[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_1 
       (.I0(timer_active0__0),
        .I1(timer_active),
        .O(\counter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77F70000)) 
    \counter[16]_i_2 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(timer_active),
        .I5(timer_active0__0),
        .O(\counter[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[16]_i_3 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[16]),
        .O(\counter[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[1]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[2]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[3]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[3]),
        .O(\counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[4]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[5]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[5]),
        .O(\counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[6]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[6]),
        .O(\counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[7]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[8]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[8]),
        .O(\counter[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77F70000)) 
    \counter[9]_i_1 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(plusOp[9]),
        .O(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[10]_i_1_n_0 ),
        .Q(counter[10]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[11]_i_1_n_0 ),
        .Q(counter[11]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[12]_i_1_n_0 ),
        .Q(counter[12]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[13]_i_1_n_0 ),
        .Q(counter[13]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[14]_i_1_n_0 ),
        .Q(counter[14]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[15]_i_1_n_0 ),
        .Q(counter[15]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[16]_i_3_n_0 ),
        .Q(counter[16]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter[8]),
        .R(\counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(GCK),
        .CE(\counter[16]_i_2_n_0 ),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter[9]),
        .R(\counter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA200FFFFA200A200)) 
    nxt_flag_int_i_1
       (.I0(nxt_flag_int_i_2_n_0),
        .I1(nxt_flag_int_i_3_n_0),
        .I2(nxt_flag_int_i_4_n_0),
        .I3(timer_active),
        .I4(timer_active0__0),
        .I5(GPIO_OUT),
        .O(nxt_flag_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    nxt_flag_int_i_2
       (.I0(counter[15]),
        .I1(counter[16]),
        .O(nxt_flag_int_i_2_n_0));
  LUT6 #(
    .INIT(64'h1055FFFFFFFFFFFF)) 
    nxt_flag_int_i_3
       (.I0(counter[8]),
        .I1(counter[6]),
        .I2(nxt_flag_int_i_6_n_0),
        .I3(counter[7]),
        .I4(counter[10]),
        .I5(counter[9]),
        .O(nxt_flag_int_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    nxt_flag_int_i_4
       (.I0(counter[12]),
        .I1(counter[11]),
        .I2(counter[14]),
        .I3(counter[13]),
        .O(nxt_flag_int_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    nxt_flag_int_i_5
       (.I0(GPIO_IN),
        .I1(stp_prev),
        .O(timer_active0__0));
  LUT6 #(
    .INIT(64'h0111FFFFFFFFFFFF)) 
    nxt_flag_int_i_6
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(nxt_flag_int_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    nxt_flag_int_reg
       (.C(GCK),
        .CE(1'b1),
        .D(nxt_flag_int_i_1_n_0),
        .Q(GPIO_OUT),
        .R(1'b0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(counter[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(counter[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(counter[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3],plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(counter[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    stp_prev_reg
       (.C(GCK),
        .CE(1'b1),
        .D(GPIO_IN),
        .Q(stp_prev),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h77F7FFFF77F70000)) 
    timer_active_i_1
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(nxt_flag_int_i_3_n_0),
        .I3(nxt_flag_int_i_4_n_0),
        .I4(timer_active),
        .I5(timer_active0__0),
        .O(timer_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    timer_active_reg
       (.C(GCK),
        .CE(1'b1),
        .D(timer_active_i_1_n_0),
        .Q(timer_active),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Servo_PWM" *) 
module Plotter_Driver_Test_Top_0_0_Servo_PWM
   (PWM_OUT,
    GCK,
    GPIO_IN);
  output PWM_OUT;
  input GCK;
  input [0:0]GPIO_IN;

  wire [20:0]CTR;
  wire CTR0_carry__0_n_0;
  wire CTR0_carry__0_n_1;
  wire CTR0_carry__0_n_2;
  wire CTR0_carry__0_n_3;
  wire CTR0_carry__1_n_0;
  wire CTR0_carry__1_n_1;
  wire CTR0_carry__1_n_2;
  wire CTR0_carry__1_n_3;
  wire CTR0_carry__2_n_0;
  wire CTR0_carry__2_n_1;
  wire CTR0_carry__2_n_2;
  wire CTR0_carry__2_n_3;
  wire CTR0_carry__3_n_1;
  wire CTR0_carry__3_n_2;
  wire CTR0_carry__3_n_3;
  wire CTR0_carry_n_0;
  wire CTR0_carry_n_1;
  wire CTR0_carry_n_2;
  wire CTR0_carry_n_3;
  wire \CTR[20]_i_1_n_0 ;
  wire \CTR[20]_i_2_n_0 ;
  wire \CTR[20]_i_3_n_0 ;
  wire \CTR[20]_i_4_n_0 ;
  wire [0:0]CTR_0;
  wire GCK;
  wire [0:0]GPIO_IN;
  wire PWM_OUT;
  wire PWM_OUT0_carry__0_i_1_n_0;
  wire PWM_OUT0_carry__0_i_2_n_0;
  wire PWM_OUT0_carry__0_i_3_n_0;
  wire PWM_OUT0_carry__0_n_1;
  wire PWM_OUT0_carry__0_n_2;
  wire PWM_OUT0_carry__0_n_3;
  wire PWM_OUT0_carry_i_1_n_0;
  wire PWM_OUT0_carry_i_2_n_0;
  wire PWM_OUT0_carry_i_3_n_0;
  wire PWM_OUT0_carry_i_4_n_0;
  wire PWM_OUT0_carry_n_0;
  wire PWM_OUT0_carry_n_1;
  wire PWM_OUT0_carry_n_2;
  wire PWM_OUT0_carry_n_3;
  wire PWM_OUT_reg_i_1_n_0;
  wire PWM_OUT_reg_i_2_n_0;
  wire PWM_OUT_reg_i_3_n_0;
  wire PWM_OUT_reg_i_4_n_0;
  wire PWM_OUT_reg_i_5_n_0;
  wire [20:1]data0;
  wire [3:3]NLW_CTR0_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_PWM_OUT0_carry_O_UNCONNECTED;
  wire [3:3]NLW_PWM_OUT0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_PWM_OUT0_carry__0_O_UNCONNECTED;

  CARRY4 CTR0_carry
       (.CI(1'b0),
        .CO({CTR0_carry_n_0,CTR0_carry_n_1,CTR0_carry_n_2,CTR0_carry_n_3}),
        .CYINIT(CTR[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(CTR[4:1]));
  CARRY4 CTR0_carry__0
       (.CI(CTR0_carry_n_0),
        .CO({CTR0_carry__0_n_0,CTR0_carry__0_n_1,CTR0_carry__0_n_2,CTR0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(CTR[8:5]));
  CARRY4 CTR0_carry__1
       (.CI(CTR0_carry__0_n_0),
        .CO({CTR0_carry__1_n_0,CTR0_carry__1_n_1,CTR0_carry__1_n_2,CTR0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(CTR[12:9]));
  CARRY4 CTR0_carry__2
       (.CI(CTR0_carry__1_n_0),
        .CO({CTR0_carry__2_n_0,CTR0_carry__2_n_1,CTR0_carry__2_n_2,CTR0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(CTR[16:13]));
  CARRY4 CTR0_carry__3
       (.CI(CTR0_carry__2_n_0),
        .CO({NLW_CTR0_carry__3_CO_UNCONNECTED[3],CTR0_carry__3_n_1,CTR0_carry__3_n_2,CTR0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(CTR[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CTR[0]_i_1 
       (.I0(CTR[0]),
        .O(CTR_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \CTR[20]_i_1 
       (.I0(\CTR[20]_i_2_n_0 ),
        .I1(CTR[15]),
        .I2(CTR[9]),
        .I3(CTR[10]),
        .I4(\CTR[20]_i_3_n_0 ),
        .I5(\CTR[20]_i_4_n_0 ),
        .O(\CTR[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \CTR[20]_i_2 
       (.I0(CTR[3]),
        .I1(CTR[4]),
        .I2(CTR[5]),
        .I3(CTR[6]),
        .I4(CTR[7]),
        .I5(CTR[8]),
        .O(\CTR[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \CTR[20]_i_3 
       (.I0(CTR[2]),
        .I1(CTR[1]),
        .I2(CTR[0]),
        .O(\CTR[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \CTR[20]_i_4 
       (.I0(CTR[19]),
        .I1(CTR[20]),
        .I2(CTR[17]),
        .I3(CTR[18]),
        .I4(PWM_OUT_reg_i_4_n_0),
        .O(\CTR[20]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[0] 
       (.C(GCK),
        .CE(1'b1),
        .D(CTR_0),
        .Q(CTR[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[10] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[10]),
        .Q(CTR[10]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[11] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[11]),
        .Q(CTR[11]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[12] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[12]),
        .Q(CTR[12]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[13] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[13]),
        .Q(CTR[13]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[14] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[14]),
        .Q(CTR[14]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[15] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[15]),
        .Q(CTR[15]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[16] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[16]),
        .Q(CTR[16]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[17] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[17]),
        .Q(CTR[17]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[18] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[18]),
        .Q(CTR[18]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[19] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[19]),
        .Q(CTR[19]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[1] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[1]),
        .Q(CTR[1]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[20] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[20]),
        .Q(CTR[20]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[2] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[2]),
        .Q(CTR[2]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[3] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[3]),
        .Q(CTR[3]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[4] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[4]),
        .Q(CTR[4]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[5] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[5]),
        .Q(CTR[5]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \CTR_reg[6] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[6]),
        .Q(CTR[6]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[7] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[7]),
        .Q(CTR[7]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[8] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[8]),
        .Q(CTR[8]),
        .R(\CTR[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CTR_reg[9] 
       (.C(GCK),
        .CE(1'b1),
        .D(data0[9]),
        .Q(CTR[9]),
        .R(\CTR[20]_i_1_n_0 ));
  CARRY4 PWM_OUT0_carry
       (.CI(1'b0),
        .CO({PWM_OUT0_carry_n_0,PWM_OUT0_carry_n_1,PWM_OUT0_carry_n_2,PWM_OUT0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PWM_OUT0_carry_O_UNCONNECTED[3:0]),
        .S({PWM_OUT0_carry_i_1_n_0,PWM_OUT0_carry_i_2_n_0,PWM_OUT0_carry_i_3_n_0,PWM_OUT0_carry_i_4_n_0}));
  CARRY4 PWM_OUT0_carry__0
       (.CI(PWM_OUT0_carry_n_0),
        .CO({NLW_PWM_OUT0_carry__0_CO_UNCONNECTED[3],PWM_OUT0_carry__0_n_1,PWM_OUT0_carry__0_n_2,PWM_OUT0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PWM_OUT0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,PWM_OUT0_carry__0_i_1_n_0,PWM_OUT0_carry__0_i_2_n_0,PWM_OUT0_carry__0_i_3_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    PWM_OUT0_carry__0_i_1
       (.I0(CTR[20]),
        .I1(CTR[19]),
        .I2(CTR[18]),
        .O(PWM_OUT0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0440)) 
    PWM_OUT0_carry__0_i_2
       (.I0(CTR[15]),
        .I1(CTR[16]),
        .I2(GPIO_IN),
        .I3(CTR[17]),
        .O(PWM_OUT0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2001)) 
    PWM_OUT0_carry__0_i_3
       (.I0(GPIO_IN),
        .I1(CTR[14]),
        .I2(CTR[13]),
        .I3(CTR[12]),
        .O(PWM_OUT0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h1040)) 
    PWM_OUT0_carry_i_1
       (.I0(CTR[9]),
        .I1(CTR[10]),
        .I2(CTR[11]),
        .I3(GPIO_IN),
        .O(PWM_OUT0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h1002)) 
    PWM_OUT0_carry_i_2
       (.I0(CTR[8]),
        .I1(CTR[7]),
        .I2(GPIO_IN),
        .I3(CTR[6]),
        .O(PWM_OUT0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    PWM_OUT0_carry_i_3
       (.I0(CTR[3]),
        .I1(CTR[4]),
        .I2(CTR[5]),
        .O(PWM_OUT0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    PWM_OUT0_carry_i_4
       (.I0(CTR[0]),
        .I1(CTR[1]),
        .I2(CTR[2]),
        .O(PWM_OUT0_carry_i_4_n_0));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    PWM_OUT_reg
       (.D(1'b0),
        .G(PWM_OUT0_carry__0_n_1),
        .GE(1'b1),
        .PRE(PWM_OUT_reg_i_1_n_0),
        .Q(PWM_OUT));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    PWM_OUT_reg_i_1
       (.I0(PWM_OUT_reg_i_2_n_0),
        .I1(PWM_OUT_reg_i_3_n_0),
        .I2(PWM_OUT_reg_i_4_n_0),
        .I3(CTR[1]),
        .I4(CTR[0]),
        .I5(PWM_OUT_reg_i_5_n_0),
        .O(PWM_OUT_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    PWM_OUT_reg_i_2
       (.I0(CTR[17]),
        .I1(CTR[18]),
        .I2(CTR[10]),
        .I3(CTR[15]),
        .I4(CTR[20]),
        .I5(CTR[19]),
        .O(PWM_OUT_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    PWM_OUT_reg_i_3
       (.I0(CTR[4]),
        .I1(CTR[5]),
        .I2(CTR[2]),
        .I3(CTR[3]),
        .I4(CTR[9]),
        .I5(CTR[6]),
        .O(PWM_OUT_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    PWM_OUT_reg_i_4
       (.I0(CTR[16]),
        .I1(CTR[11]),
        .I2(CTR[12]),
        .I3(CTR[13]),
        .I4(CTR[14]),
        .O(PWM_OUT_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM_OUT_reg_i_5
       (.I0(CTR[7]),
        .I1(CTR[8]),
        .O(PWM_OUT_reg_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "Test_Top" *) 
module Plotter_Driver_Test_Top_0_0_Test_Top
   (PWM_OUT,
    OUT_1,
    OUT_2,
    GPIO_OUT,
    GCK,
    GPIO_IN);
  output PWM_OUT;
  output [3:0]OUT_1;
  output [3:0]OUT_2;
  output [1:0]GPIO_OUT;
  input GCK;
  input [5:0]GPIO_IN;

  wire GCK;
  wire [5:0]GPIO_IN;
  wire [1:0]GPIO_OUT;
  wire HALFSTEPPER_GEN_2_n_1;
  wire [3:0]OUT_1;
  wire [3:0]OUT_2;
  wire PWM_OUT;

  Plotter_Driver_Test_Top_0_0_Half_Stepping_Top HALFSTEPPER_GEN_1
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[1:0]),
        .GPIO_OUT(GPIO_OUT[0]),
        .OUT_1(OUT_1),
        .\data_reg[6] (HALFSTEPPER_GEN_2_n_1));
  Plotter_Driver_Test_Top_0_0_Half_Stepping_Top_0 HALFSTEPPER_GEN_2
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[4:2]),
        .\GPIO_IN[4] (HALFSTEPPER_GEN_2_n_1),
        .GPIO_OUT(GPIO_OUT[1]),
        .OUT_2(OUT_2));
  Plotter_Driver_Test_Top_0_0_Servo_PWM SERVO_PWM_GEN
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[5]),
        .PWM_OUT(PWM_OUT));
endmodule

(* ORIG_REF_NAME = "half_step_rom" *) 
module Plotter_Driver_Test_Top_0_0_half_step_rom
   (\GPIO_IN[4] ,
    OUT_2,
    GPIO_IN,
    GCK,
    D,
    Q);
  output \GPIO_IN[4] ;
  output [3:0]OUT_2;
  input [0:0]GPIO_IN;
  input GCK;
  input [0:0]D;
  input [2:0]Q;

  wire [0:0]D;
  wire GCK;
  wire [0:0]GPIO_IN;
  wire \GPIO_IN[4] ;
  wire [3:0]OUT_2;
  wire [2:0]Q;
  wire \data[4]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'h89)) 
    \data[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \data[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \data[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\data[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[7]_i_2 
       (.I0(GPIO_IN),
        .O(\GPIO_IN[4] ));
  FDPE \data_reg[4] 
       (.C(GCK),
        .CE(1'b1),
        .D(\data[4]_i_1_n_0 ),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[0]));
  FDPE \data_reg[5] 
       (.C(GCK),
        .CE(1'b1),
        .D(D),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[1]));
  FDPE \data_reg[6] 
       (.C(GCK),
        .CE(1'b1),
        .D(\data[6]_i_1_n_0 ),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[2]));
  FDPE \data_reg[7] 
       (.C(GCK),
        .CE(1'b1),
        .D(\data[7]_i_1_n_0 ),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[3]));
endmodule

(* ORIG_REF_NAME = "half_step_rom" *) 
module Plotter_Driver_Test_Top_0_0_half_step_rom_3
   (OUT_1,
    GCK,
    \data_reg[6]_0 ,
    D,
    Q);
  output [3:0]OUT_1;
  input GCK;
  input \data_reg[6]_0 ;
  input [0:0]D;
  input [2:0]Q;

  wire [0:0]D;
  wire GCK;
  wire [3:0]OUT_1;
  wire [2:0]Q;
  wire \data_reg[6]_0 ;
  wire [7:4]p_0_in;

  LUT3 #(
    .INIT(8'h89)) 
    \data[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \data[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \data[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[7]));
  FDPE \data_reg[4] 
       (.C(GCK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .PRE(\data_reg[6]_0 ),
        .Q(OUT_1[0]));
  FDPE \data_reg[5] 
       (.C(GCK),
        .CE(1'b1),
        .D(D),
        .PRE(\data_reg[6]_0 ),
        .Q(OUT_1[1]));
  FDPE \data_reg[6] 
       (.C(GCK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .PRE(\data_reg[6]_0 ),
        .Q(OUT_1[2]));
  FDPE \data_reg[7] 
       (.C(GCK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .PRE(\data_reg[6]_0 ),
        .Q(OUT_1[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
