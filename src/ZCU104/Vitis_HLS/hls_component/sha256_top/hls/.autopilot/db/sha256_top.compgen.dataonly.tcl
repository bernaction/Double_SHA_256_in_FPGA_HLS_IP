# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
header { 
	dir I
	width 32
	depth 20
	mode ap_memory
	offset 256
	offset_end 383
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
hash_result { 
	dir O
	width 32
	depth 8
	mode ap_memory
	offset 512
	offset_end 543
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


