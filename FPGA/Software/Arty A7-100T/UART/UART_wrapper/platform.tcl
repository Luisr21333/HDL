# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\luisr\Desktop\Vitis\Graduate_Project\FPGA\Arty_A7-100T\UART\UART_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\luisr\Desktop\Vitis\Graduate_Project\FPGA\Arty_A7-100T\UART\UART_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {UART_wrapper}\
-hw {C:\Users\luisr\Desktop\FPGA\Arty A7-100T\UART\UART\UART_wrapper.xsa}\
-out {C:/Users/luisr/Desktop/Vitis/Graduate_Project/FPGA/Arty_A7-100T/UART}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {UART_wrapper}
platform generate -quick
platform generate
