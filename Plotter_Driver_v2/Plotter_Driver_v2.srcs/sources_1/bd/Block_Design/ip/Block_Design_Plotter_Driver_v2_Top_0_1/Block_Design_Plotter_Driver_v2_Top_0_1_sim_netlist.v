// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue May 20 15:44:22 2025
// Host        : BoenikeLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/benci/Documents/University/SEM4/SPROJ4/Software/Plotter_Driver_v2/Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ip/Block_Design_Plotter_Driver_v2_Top_0_1/Block_Design_Plotter_Driver_v2_Top_0_1_sim_netlist.v
// Design      : Block_Design_Plotter_Driver_v2_Top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_Design_Plotter_Driver_v2_Top_0_1,Plotter_Driver_v2_Top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Plotter_Driver_v2_Top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Block_Design_Plotter_Driver_v2_Top_0_1
   (GCK,
    GPIO_IN,
    OUT_1,
    OUT_2,
    PWM_OUT);
  input GCK;
  input [5:0]GPIO_IN;
  output [7:0]OUT_1;
  output [7:0]OUT_2;
  output PWM_OUT;

  wire GCK;
  wire [5:0]GPIO_IN;
  wire [3:0]\^OUT_1 ;
  wire [3:0]\^OUT_2 ;
  wire PWM_OUT;

  assign OUT_1[7:4] = \^OUT_1 [3:0];
  assign OUT_1[3:0] = \^OUT_1 [3:0];
  assign OUT_2[7:4] = \^OUT_2 [3:0];
  assign OUT_2[3:0] = \^OUT_2 [3:0];
  Block_Design_Plotter_Driver_v2_Top_0_1_Plotter_Driver_v2_Top U0
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN),
        .OUT_1(\^OUT_1 ),
        .OUT_2(\^OUT_2 ),
        .PWM_OUT(PWM_OUT));
endmodule

(* ORIG_REF_NAME = "Halfstepper" *) 
module Block_Design_Plotter_Driver_v2_Top_0_1_Halfstepper
   (OUT_1,
    GPIO_IN,
    GCK,
    \Windings_sig_reg[7]_0 );
  output [3:0]OUT_1;
  input [1:0]GPIO_IN;
  input GCK;
  input \Windings_sig_reg[7]_0 ;

  wire [2:0]A;
  wire GCK;
  wire [1:0]GPIO_IN;
  wire [3:0]OUT_1;
  wire \Windings_sig[5]_i_1_n_0 ;
  wire \Windings_sig_reg[7]_0 ;
  wire \current_addr[0]_i_1_n_0 ;
  wire \current_addr[1]_i_1_n_0 ;
  wire \current_addr[2]_i_1_n_0 ;
  wire [7:4]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h89)) 
    \Windings_sig[4]_i_1 
       (.I0(A[1]),
        .I1(A[2]),
        .I2(A[0]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \Windings_sig[5]_i_1 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(A[2]),
        .O(\Windings_sig[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \Windings_sig[6]_i_1 
       (.I0(A[1]),
        .I1(A[2]),
        .I2(A[0]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \Windings_sig[7]_i_1 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(A[2]),
        .O(p_0_in[7]));
  FDPE \Windings_sig_reg[4] 
       (.C(GCK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .PRE(\Windings_sig_reg[7]_0 ),
        .Q(OUT_1[0]));
  FDPE \Windings_sig_reg[5] 
       (.C(GCK),
        .CE(1'b1),
        .D(\Windings_sig[5]_i_1_n_0 ),
        .PRE(\Windings_sig_reg[7]_0 ),
        .Q(OUT_1[1]));
  FDPE \Windings_sig_reg[6] 
       (.C(GCK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .PRE(\Windings_sig_reg[7]_0 ),
        .Q(OUT_1[2]));
  FDPE \Windings_sig_reg[7] 
       (.C(GCK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .PRE(\Windings_sig_reg[7]_0 ),
        .Q(OUT_1[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \current_addr[0]_i_1 
       (.I0(A[0]),
        .O(\current_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \current_addr[1]_i_1 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(GPIO_IN[1]),
        .O(\current_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \current_addr[2]_i_1 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(A[2]),
        .I3(GPIO_IN[1]),
        .O(\current_addr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[0] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[0]_i_1_n_0 ),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[1] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[1]_i_1_n_0 ),
        .Q(A[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[2] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[2]_i_1_n_0 ),
        .Q(A[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Halfstepper" *) 
module Block_Design_Plotter_Driver_v2_Top_0_1_Halfstepper_0
   (\GPIO_IN[4] ,
    OUT_2,
    GPIO_IN,
    GCK);
  output \GPIO_IN[4] ;
  output [3:0]OUT_2;
  input [2:0]GPIO_IN;
  input GCK;

  wire GCK;
  wire [2:0]GPIO_IN;
  wire \GPIO_IN[4] ;
  wire [3:0]OUT_2;
  wire \Windings_sig[4]_i_1_n_0 ;
  wire \Windings_sig[5]_i_1__0_n_0 ;
  wire \Windings_sig[6]_i_1_n_0 ;
  wire \Windings_sig[7]_i_1_n_0 ;
  wire \current_addr[0]_i_1__0_n_0 ;
  wire \current_addr[1]_i_1__0_n_0 ;
  wire \current_addr[2]_i_1__0_n_0 ;
  wire \current_addr_reg_n_0_[0] ;
  wire \current_addr_reg_n_0_[1] ;
  wire \current_addr_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h89)) 
    \Windings_sig[4]_i_1 
       (.I0(\current_addr_reg_n_0_[1] ),
        .I1(\current_addr_reg_n_0_[2] ),
        .I2(\current_addr_reg_n_0_[0] ),
        .O(\Windings_sig[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \Windings_sig[5]_i_1__0 
       (.I0(\current_addr_reg_n_0_[0] ),
        .I1(\current_addr_reg_n_0_[1] ),
        .I2(\current_addr_reg_n_0_[2] ),
        .O(\Windings_sig[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \Windings_sig[6]_i_1 
       (.I0(\current_addr_reg_n_0_[1] ),
        .I1(\current_addr_reg_n_0_[2] ),
        .I2(\current_addr_reg_n_0_[0] ),
        .O(\Windings_sig[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \Windings_sig[7]_i_1 
       (.I0(\current_addr_reg_n_0_[0] ),
        .I1(\current_addr_reg_n_0_[1] ),
        .I2(\current_addr_reg_n_0_[2] ),
        .O(\Windings_sig[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Windings_sig[7]_i_2 
       (.I0(GPIO_IN[2]),
        .O(\GPIO_IN[4] ));
  FDPE \Windings_sig_reg[4] 
       (.C(GCK),
        .CE(1'b1),
        .D(\Windings_sig[4]_i_1_n_0 ),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[0]));
  FDPE \Windings_sig_reg[5] 
       (.C(GCK),
        .CE(1'b1),
        .D(\Windings_sig[5]_i_1__0_n_0 ),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[1]));
  FDPE \Windings_sig_reg[6] 
       (.C(GCK),
        .CE(1'b1),
        .D(\Windings_sig[6]_i_1_n_0 ),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[2]));
  FDPE \Windings_sig_reg[7] 
       (.C(GCK),
        .CE(1'b1),
        .D(\Windings_sig[7]_i_1_n_0 ),
        .PRE(\GPIO_IN[4] ),
        .Q(OUT_2[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \current_addr[0]_i_1__0 
       (.I0(\current_addr_reg_n_0_[0] ),
        .O(\current_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \current_addr[1]_i_1__0 
       (.I0(\current_addr_reg_n_0_[0] ),
        .I1(\current_addr_reg_n_0_[1] ),
        .I2(GPIO_IN[1]),
        .O(\current_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \current_addr[2]_i_1__0 
       (.I0(\current_addr_reg_n_0_[0] ),
        .I1(\current_addr_reg_n_0_[1] ),
        .I2(\current_addr_reg_n_0_[2] ),
        .I3(GPIO_IN[1]),
        .O(\current_addr[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[0] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[0]_i_1__0_n_0 ),
        .Q(\current_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[1] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[1]_i_1__0_n_0 ),
        .Q(\current_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_addr_reg[2] 
       (.C(GPIO_IN[0]),
        .CE(1'b1),
        .D(\current_addr[2]_i_1__0_n_0 ),
        .Q(\current_addr_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Plotter_Driver_v2_Top" *) 
module Block_Design_Plotter_Driver_v2_Top_0_1_Plotter_Driver_v2_Top
   (PWM_OUT,
    OUT_1,
    OUT_2,
    GCK,
    GPIO_IN);
  output PWM_OUT;
  output [3:0]OUT_1;
  output [3:0]OUT_2;
  input GCK;
  input [5:0]GPIO_IN;

  wire GCK;
  wire [5:0]GPIO_IN;
  wire HALFSTEPPER_GEN_2_n_0;
  wire [3:0]OUT_1;
  wire [3:0]OUT_2;
  wire PWM_OUT;

  Block_Design_Plotter_Driver_v2_Top_0_1_Halfstepper HALFSTEPPER_GEN_1
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[1:0]),
        .OUT_1(OUT_1),
        .\Windings_sig_reg[7]_0 (HALFSTEPPER_GEN_2_n_0));
  Block_Design_Plotter_Driver_v2_Top_0_1_Halfstepper_0 HALFSTEPPER_GEN_2
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[4:2]),
        .\GPIO_IN[4] (HALFSTEPPER_GEN_2_n_0),
        .OUT_2(OUT_2));
  Block_Design_Plotter_Driver_v2_Top_0_1_Servo_PWM_Gen SERVO_PWM_GENERATOR
       (.GCK(GCK),
        .GPIO_IN(GPIO_IN[5]),
        .PWM_OUT(PWM_OUT));
endmodule

(* ORIG_REF_NAME = "Servo_PWM_Gen" *) 
module Block_Design_Plotter_Driver_v2_Top_0_1_Servo_PWM_Gen
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
  LUT1 #(
    .INIT(2'h1)) 
    \CTR[0]_i_1 
       (.I0(CTR[0]),
        .O(CTR_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \CTR[20]_i_1 
       (.I0(\CTR[20]_i_2_n_0 ),
        .I1(\CTR[20]_i_3_n_0 ),
        .I2(PWM_OUT_reg_i_4_n_0),
        .I3(\CTR[20]_i_4_n_0 ),
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
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \CTR[20]_i_3 
       (.I0(CTR[15]),
        .I1(CTR[9]),
        .I2(CTR[10]),
        .I3(CTR[0]),
        .I4(CTR[1]),
        .I5(CTR[2]),
        .O(\CTR[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \CTR[20]_i_4 
       (.I0(CTR[18]),
        .I1(CTR[17]),
        .I2(CTR[20]),
        .I3(CTR[19]),
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
