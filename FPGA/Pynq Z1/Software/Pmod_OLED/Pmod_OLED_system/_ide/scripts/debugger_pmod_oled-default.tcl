# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\luisr\Desktop\FPGA\Software\Pynq_Z1\Pmod_OLED\Pmod_OLED_system\_ide\scripts\debugger_pmod_oled-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\luisr\Desktop\FPGA\Software\Pynq_Z1\Pmod_OLED\Pmod_OLED_system\_ide\scripts\debugger_pmod_oled-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017B5C7FEA" && level==0 && jtag_device_ctx=="jsn-Xilinx PYNQ-Z1-003017B5C7FEA-23727093-0"}
fpga -file C:/Users/luisr/Desktop/FPGA/Software/Pynq_Z1/Pmod_OLED/Pmod_OLED/_ide/bitstream/Pmod_OLED_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/luisr/Desktop/FPGA/Software/Pynq_Z1/Pmod_OLED/Pmod_OLED_wrapper/export/Pmod_OLED_wrapper/hw/Pmod_OLED_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/luisr/Desktop/FPGA/Software/Pynq_Z1/Pmod_OLED/Pmod_OLED/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/luisr/Desktop/FPGA/Software/Pynq_Z1/Pmod_OLED/Pmod_OLED/Debug/Pmod_OLED.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
