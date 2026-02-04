# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 406 \
    name state \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state \
    op interface \
    ports { state_address0 { O 3 vector } state_ce0 { O 1 bit } state_we0 { O 1 bit } state_d0 { O 32 vector } state_q0 { I 32 vector } state_address1 { O 3 vector } state_ce1 { O 1 bit } state_we1 { O 1 bit } state_d1 { O 32 vector } state_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name in_data_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_0 \
    op interface \
    ports { in_data_0_i { I 8 vector } in_data_0_o { O 8 vector } in_data_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name in_data_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_1 \
    op interface \
    ports { in_data_1_i { I 8 vector } in_data_1_o { O 8 vector } in_data_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name in_data_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_2 \
    op interface \
    ports { in_data_2_i { I 8 vector } in_data_2_o { O 8 vector } in_data_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name in_data_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_3 \
    op interface \
    ports { in_data_3_i { I 8 vector } in_data_3_o { O 8 vector } in_data_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name in_data_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_4 \
    op interface \
    ports { in_data_4_i { I 8 vector } in_data_4_o { O 8 vector } in_data_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name in_data_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_5 \
    op interface \
    ports { in_data_5_i { I 8 vector } in_data_5_o { O 8 vector } in_data_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name in_data_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_6 \
    op interface \
    ports { in_data_6_i { I 8 vector } in_data_6_o { O 8 vector } in_data_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name in_data_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_7 \
    op interface \
    ports { in_data_7_i { I 8 vector } in_data_7_o { O 8 vector } in_data_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name in_data_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_8 \
    op interface \
    ports { in_data_8_i { I 8 vector } in_data_8_o { O 8 vector } in_data_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name in_data_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_9 \
    op interface \
    ports { in_data_9_i { I 8 vector } in_data_9_o { O 8 vector } in_data_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name in_data_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_10 \
    op interface \
    ports { in_data_10_i { I 8 vector } in_data_10_o { O 8 vector } in_data_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name in_data_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_11 \
    op interface \
    ports { in_data_11_i { I 8 vector } in_data_11_o { O 8 vector } in_data_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name in_data_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_12 \
    op interface \
    ports { in_data_12_i { I 8 vector } in_data_12_o { O 8 vector } in_data_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name in_data_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_13 \
    op interface \
    ports { in_data_13_i { I 8 vector } in_data_13_o { O 8 vector } in_data_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name in_data_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_14 \
    op interface \
    ports { in_data_14_i { I 8 vector } in_data_14_o { O 8 vector } in_data_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name in_data_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_15 \
    op interface \
    ports { in_data_15_i { I 8 vector } in_data_15_o { O 8 vector } in_data_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name in_data_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_16 \
    op interface \
    ports { in_data_16_i { I 8 vector } in_data_16_o { O 8 vector } in_data_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name in_data_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_17 \
    op interface \
    ports { in_data_17_i { I 8 vector } in_data_17_o { O 8 vector } in_data_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name in_data_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_18 \
    op interface \
    ports { in_data_18_i { I 8 vector } in_data_18_o { O 8 vector } in_data_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name in_data_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_19 \
    op interface \
    ports { in_data_19_i { I 8 vector } in_data_19_o { O 8 vector } in_data_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name in_data_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_20 \
    op interface \
    ports { in_data_20_i { I 8 vector } in_data_20_o { O 8 vector } in_data_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name in_data_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_21 \
    op interface \
    ports { in_data_21_i { I 8 vector } in_data_21_o { O 8 vector } in_data_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name in_data_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_22 \
    op interface \
    ports { in_data_22_i { I 8 vector } in_data_22_o { O 8 vector } in_data_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name in_data_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_23 \
    op interface \
    ports { in_data_23_i { I 8 vector } in_data_23_o { O 8 vector } in_data_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name in_data_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_24 \
    op interface \
    ports { in_data_24_i { I 8 vector } in_data_24_o { O 8 vector } in_data_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name in_data_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_25 \
    op interface \
    ports { in_data_25_i { I 8 vector } in_data_25_o { O 8 vector } in_data_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name in_data_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_26 \
    op interface \
    ports { in_data_26_i { I 8 vector } in_data_26_o { O 8 vector } in_data_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name in_data_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_27 \
    op interface \
    ports { in_data_27_i { I 8 vector } in_data_27_o { O 8 vector } in_data_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name in_data_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_28 \
    op interface \
    ports { in_data_28_i { I 8 vector } in_data_28_o { O 8 vector } in_data_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name in_data_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_29 \
    op interface \
    ports { in_data_29_i { I 8 vector } in_data_29_o { O 8 vector } in_data_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name in_data_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_30 \
    op interface \
    ports { in_data_30_i { I 8 vector } in_data_30_o { O 8 vector } in_data_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name in_data_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_31 \
    op interface \
    ports { in_data_31_i { I 8 vector } in_data_31_o { O 8 vector } in_data_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name in_data_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_32 \
    op interface \
    ports { in_data_32_i { I 8 vector } in_data_32_o { O 8 vector } in_data_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name in_data_33 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_33 \
    op interface \
    ports { in_data_33_i { I 8 vector } in_data_33_o { O 8 vector } in_data_33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name in_data_34 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_34 \
    op interface \
    ports { in_data_34_i { I 8 vector } in_data_34_o { O 8 vector } in_data_34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name in_data_35 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_35 \
    op interface \
    ports { in_data_35_i { I 8 vector } in_data_35_o { O 8 vector } in_data_35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name in_data_36 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_36 \
    op interface \
    ports { in_data_36_i { I 8 vector } in_data_36_o { O 8 vector } in_data_36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name in_data_37 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_37 \
    op interface \
    ports { in_data_37_i { I 8 vector } in_data_37_o { O 8 vector } in_data_37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name in_data_38 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_38 \
    op interface \
    ports { in_data_38_i { I 8 vector } in_data_38_o { O 8 vector } in_data_38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name in_data_39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_39 \
    op interface \
    ports { in_data_39_i { I 8 vector } in_data_39_o { O 8 vector } in_data_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name in_data_40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_40 \
    op interface \
    ports { in_data_40_i { I 8 vector } in_data_40_o { O 8 vector } in_data_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name in_data_41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_41 \
    op interface \
    ports { in_data_41_i { I 8 vector } in_data_41_o { O 8 vector } in_data_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name in_data_42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_42 \
    op interface \
    ports { in_data_42_i { I 8 vector } in_data_42_o { O 8 vector } in_data_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name in_data_43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_43 \
    op interface \
    ports { in_data_43_i { I 8 vector } in_data_43_o { O 8 vector } in_data_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name in_data_44 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_44 \
    op interface \
    ports { in_data_44_i { I 8 vector } in_data_44_o { O 8 vector } in_data_44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name in_data_45 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_45 \
    op interface \
    ports { in_data_45_i { I 8 vector } in_data_45_o { O 8 vector } in_data_45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name in_data_46 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_46 \
    op interface \
    ports { in_data_46_i { I 8 vector } in_data_46_o { O 8 vector } in_data_46_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name in_data_47 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_47 \
    op interface \
    ports { in_data_47_i { I 8 vector } in_data_47_o { O 8 vector } in_data_47_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name in_data_48 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_48 \
    op interface \
    ports { in_data_48_i { I 8 vector } in_data_48_o { O 8 vector } in_data_48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name in_data_49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_49 \
    op interface \
    ports { in_data_49_i { I 8 vector } in_data_49_o { O 8 vector } in_data_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name in_data_50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_50 \
    op interface \
    ports { in_data_50_i { I 8 vector } in_data_50_o { O 8 vector } in_data_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name in_data_51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_51 \
    op interface \
    ports { in_data_51_i { I 8 vector } in_data_51_o { O 8 vector } in_data_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name in_data_52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_52 \
    op interface \
    ports { in_data_52_i { I 8 vector } in_data_52_o { O 8 vector } in_data_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name in_data_53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_53 \
    op interface \
    ports { in_data_53_i { I 8 vector } in_data_53_o { O 8 vector } in_data_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name in_data_54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_54 \
    op interface \
    ports { in_data_54_i { I 8 vector } in_data_54_o { O 8 vector } in_data_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name in_data_55 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_55 \
    op interface \
    ports { in_data_55_i { I 8 vector } in_data_55_o { O 8 vector } in_data_55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name in_data_56 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_56 \
    op interface \
    ports { in_data_56_i { I 8 vector } in_data_56_o { O 8 vector } in_data_56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name in_data_57 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_57 \
    op interface \
    ports { in_data_57_i { I 8 vector } in_data_57_o { O 8 vector } in_data_57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name in_data_58 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_58 \
    op interface \
    ports { in_data_58_i { I 8 vector } in_data_58_o { O 8 vector } in_data_58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name in_data_59 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_59 \
    op interface \
    ports { in_data_59_i { I 8 vector } in_data_59_o { O 8 vector } in_data_59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name in_data_60 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_60 \
    op interface \
    ports { in_data_60_i { I 8 vector } in_data_60_o { O 8 vector } in_data_60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name in_data_61 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_61 \
    op interface \
    ports { in_data_61_i { I 8 vector } in_data_61_o { O 8 vector } in_data_61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name in_data_62 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_62 \
    op interface \
    ports { in_data_62_i { I 8 vector } in_data_62_o { O 8 vector } in_data_62_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name in_data_63 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_in_data_63 \
    op interface \
    ports { in_data_63_i { I 8 vector } in_data_63_o { O 8 vector } in_data_63_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name datalen_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_datalen_val \
    op interface \
    ports { datalen_val { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name bitlen_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitlen_0_0_val \
    op interface \
    ports { bitlen_0_0_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name bitlen_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitlen_0_1_val \
    op interface \
    ports { bitlen_0_1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


