# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\luisr\Desktop\FPGA\Software\KCU105\GPIO\GPIO_system\_ide\scripts\debugger_gpio-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\luisr\Desktop\FPGA\Software\KCU105\GPIO\GPIO_system\_ide\scripts\debugger_gpio-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308B0AABB" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2NC-210308B0AABB-13822093-0"}
fpga -file C:/Users/luisr/Desktop/FPGA/Software/KCU105/GPIO/GPIO/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/luisr/Desktop/FPGA/Software/KCU105/GPIO/GPIO_wrapper/export/GPIO_wrapper/hw/GPIO_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/luisr/Desktop/FPGA/Software/KCU105/GPIO/GPIO/Debug/GPIO.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
