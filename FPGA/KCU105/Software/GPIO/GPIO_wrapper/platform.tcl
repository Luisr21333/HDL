# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\luisr\Desktop\FPGA\Software\KCU105\GPIO\GPIO_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\luisr\Desktop\FPGA\Software\KCU105\GPIO\GPIO_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {GPIO_wrapper}\
-hw {C:\Users\luisr\Desktop\FPGA\Hardware\KCU105\GPIO\GPIO_wrapper.xsa}\
-out {C:/Users/luisr/Desktop/FPGA/Software/KCU105/GPIO}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {GPIO_wrapper}
platform generate -quick
platform clean
platform generate
platform generate
platform generate
platform generate -domains 
platform generate
platform generate -domains 
platform generate
