connect -url tcp:127.0.0.1:3121
source C:/Users/benci/Documents/University/SEM4/SPROJ4/Software/SPROJ4G2D_Plotter_Driver/Plotter_Driver_v2/Plotter_Driver_v2.sdk/Block_Design_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39BC3"} -index 0
loadhw -hw C:/Users/benci/Documents/University/SEM4/SPROJ4/Software/SPROJ4G2D_Plotter_Driver/Plotter_Driver_v2/Plotter_Driver_v2.sdk/Block_Design_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39BC3"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A39BC3"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A39BC3"} -index 0
dow C:/Users/benci/Documents/University/SEM4/SPROJ4/Software/SPROJ4G2D_Plotter_Driver/Plotter_Driver_v2/Plotter_Driver_v2.sdk/Plotter_driver/Debug/Plotter_driver.elf
configparams force-mem-access 0
bpadd -addr &main
