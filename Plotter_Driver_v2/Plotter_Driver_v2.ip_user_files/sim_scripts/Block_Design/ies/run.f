-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Block_Design/ip/Block_Design_processing_system7_0_1/Block_Design_processing_system7_0_1_sim_netlist.vhdl" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Block_Design/ip/Block_Design_proc_sys_reset_0_1/sim/Block_Design_proc_sys_reset_0_1.vhd" \
  "../../../bd/Block_Design/ipshared/0702/hdl/AXI_Plotter_Driver_Interconnection_v1_0_S00_AXI.vhd" \
  "../../../bd/Block_Design/ipshared/0702/hdl/AXI_Plotter_Driver_Interconnection_v1_0.vhd" \
  "../../../bd/Block_Design/ip/Block_Design_AXI_Plotter_Driver_I_0_1/sim/Block_Design_AXI_Plotter_Driver_I_0_1.vhd" \
  "../../../bd/Block_Design/ip/Block_Design_Plotter_Driver_v2_Top_0_1/sim/Block_Design_Plotter_Driver_v2_Top_0_1.vhd" \
  "../../../bd/Block_Design/ip/Block_Design_xbar_0/Block_Design_xbar_0_sim_netlist.vhdl" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_21 \
  "../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Block_Design/ip/Block_Design_axi_gpio_0_0/sim/Block_Design_axi_gpio_0_0.vhd" \
  "../../../bd/Block_Design/ip/Block_Design_auto_pc_0/Block_Design_auto_pc_0_sim_netlist.vhdl" \
  "../../../bd/Block_Design/sim/Block_Design.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

