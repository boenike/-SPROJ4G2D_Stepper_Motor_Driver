vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_21

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 modelsim_lib/msim/axi_gpio_v2_0_21

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/ec67/hdl" "+incdir+../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/8c62/hdl" "+incdir+../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ip/Block_Design_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Block_Design/ip/Block_Design_processing_system7_0_1/Block_Design_processing_system7_0_1_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Block_Design/ip/Block_Design_proc_sys_reset_0_1/sim/Block_Design_proc_sys_reset_0_1.vhd" \
"../../../bd/Block_Design/ipshared/0702/hdl/AXI_Plotter_Driver_Interconnection_v1_0_S00_AXI.vhd" \
"../../../bd/Block_Design/ipshared/0702/hdl/AXI_Plotter_Driver_Interconnection_v1_0.vhd" \
"../../../bd/Block_Design/ip/Block_Design_AXI_Plotter_Driver_I_0_1/sim/Block_Design_AXI_Plotter_Driver_I_0_1.vhd" \
"../../../bd/Block_Design/ip/Block_Design_Plotter_Driver_v2_Top_0_1/sim/Block_Design_Plotter_Driver_v2_Top_0_1.vhd" \
"../../../bd/Block_Design/ip/Block_Design_xbar_0/Block_Design_xbar_0_sim_netlist.vhdl" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -64 -93 \
"../../../../Plotter_Driver_v2.srcs/sources_1/bd/Block_Design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Block_Design/ip/Block_Design_axi_gpio_0_0/sim/Block_Design_axi_gpio_0_0.vhd" \
"../../../bd/Block_Design/ip/Block_Design_auto_pc_0/Block_Design_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/Block_Design/sim/Block_Design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

