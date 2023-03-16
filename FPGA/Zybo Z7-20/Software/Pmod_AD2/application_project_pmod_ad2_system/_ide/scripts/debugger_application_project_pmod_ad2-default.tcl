# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\luisr\Desktop\Vitis\Graduate_Project\FPGA\Pmod_AD2\application_project_pmod_ad2_system\_ide\scripts\debugger_application_project_pmod_ad2-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\luisr\Desktop\Vitis\Graduate_Project\FPGA\Pmod_AD2\application_project_pmod_ad2_system\_ide\scripts\debugger_application_project_pmod_ad2-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B481C2A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B481C2A-23727093-0"}
fpga -file C:/Users/luisr/Desktop/Vitis/Graduate_Project/FPGA/Pmod_AD2/application_project_pmod_ad2/_ide/bitstream/Pmod_AD2_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/luisr/Desktop/Vitis/Graduate_Project/FPGA/Pmod_AD2/Pmod_AD2_wrapper/export/Pmod_AD2_wrapper/hw/Pmod_AD2_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/luisr/Desktop/Vitis/Graduate_Project/FPGA/Pmod_AD2/application_project_pmod_ad2/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/luisr/Desktop/Vitis/Graduate_Project/FPGA/Pmod_AD2/application_project_pmod_ad2/Debug/application_project_pmod_ad2.elf
configparams force-mem-access 0
bpadd -addr &main
