# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Clouds\Dropbox\Vivado_Project\Final\ZCU104\Vitis_Baremetal\sha256_top\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Clouds\Dropbox\Vivado_Project\Final\ZCU104\Vitis_Baremetal\sha256_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {sha256_top}\
-hw {D:\Clouds\Dropbox\Vivado_Project\Final\ZCU104\Vivado\sha256_top.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/Clouds/Dropbox/Vivado_Project/Final/ZCU104/Vitis_Baremetal}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {empty_application}
platform generate -domains 
platform active {sha256_top}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
