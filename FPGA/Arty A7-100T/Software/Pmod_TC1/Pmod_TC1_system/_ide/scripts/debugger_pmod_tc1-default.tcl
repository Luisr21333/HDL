# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\luisr\Desktop\FPGA\Software\Arty_A7-100T\Pmod_TC1\Pmod_TC1_system\_ide\scripts\debugger_pmod_tc1-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\luisr\Desktop\FPGA\Software\Arty_A7-100T\Pmod_TC1\Pmod_TC1_system\_ide\scripts\debugger_pmod_tc1-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-100T 210319B7C8A8A" && level==0 && jtag_device_ctx=="jsn-Arty A7-100T-210319B7C8A8A-13631093-0"}
fpga -file C:/Users/luisr/Desktop/FPGA/Software/Arty_A7-100T/Pmod_TC1/Pmod_TC1/_ide/bitstream/Pmod_TC1_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/luisr/Desktop/FPGA/Software/Arty_A7-100T/Pmod_TC1/Pmod_TC1_wrapper/export/Pmod_TC1_wrapper/hw/Pmod_TC1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/luisr/Desktop/FPGA/Software/Arty_A7-100T/Pmod_TC1/Pmod_TC1/Debug/Pmod_TC1.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
