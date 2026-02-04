# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sha256_top_sparsemux_129_6_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sha256_top_sha256_transform_Pipeline_VITIS_LOOP_33_3_k_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a \
    op interface \
    ports { a { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b \
    op interface \
    ports { b { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name c \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c \
    op interface \
    ports { c { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name d \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d \
    op interface \
    ports { d { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name e \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e \
    op interface \
    ports { e { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name f \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f \
    op interface \
    ports { f { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name g \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_g \
    op interface \
    ports { g { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h \
    op interface \
    ports { h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name or_ln16_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_2 \
    op interface \
    ports { or_ln16_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name or_ln16_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_5 \
    op interface \
    ports { or_ln16_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name or_ln16_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_8 \
    op interface \
    ports { or_ln16_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name or_ln16_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_s \
    op interface \
    ports { or_ln16_s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name or_ln16_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_1 \
    op interface \
    ports { or_ln16_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name or_ln16_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_3 \
    op interface \
    ports { or_ln16_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name or_ln16_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_4 \
    op interface \
    ports { or_ln16_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name or_ln16_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_6 \
    op interface \
    ports { or_ln16_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name or_ln16_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_7 \
    op interface \
    ports { or_ln16_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name or_ln16_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_9 \
    op interface \
    ports { or_ln16_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name or_ln16_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_10 \
    op interface \
    ports { or_ln16_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name or_ln16_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_11 \
    op interface \
    ports { or_ln16_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name or_ln16_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_12 \
    op interface \
    ports { or_ln16_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name or_ln16_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_13 \
    op interface \
    ports { or_ln16_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name or_ln16_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_14 \
    op interface \
    ports { or_ln16_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name or_ln16_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln16_15 \
    op interface \
    ports { or_ln16_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name m_16_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_16_load_reload \
    op interface \
    ports { m_16_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name m_17_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_17_load_reload \
    op interface \
    ports { m_17_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name m_18_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_18_load_reload \
    op interface \
    ports { m_18_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name m_19_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_19_load_reload \
    op interface \
    ports { m_19_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name m_20_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_20_load_reload \
    op interface \
    ports { m_20_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name m_21_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_21_load_reload \
    op interface \
    ports { m_21_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name m_22_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_22_load_reload \
    op interface \
    ports { m_22_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name m_23_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_23_load_reload \
    op interface \
    ports { m_23_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name m_24_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_24_load_reload \
    op interface \
    ports { m_24_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name m_25_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_25_load_reload \
    op interface \
    ports { m_25_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name m_26_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_26_load_reload \
    op interface \
    ports { m_26_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name m_27_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_27_load_reload \
    op interface \
    ports { m_27_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name m_28_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_28_load_reload \
    op interface \
    ports { m_28_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name m_29_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_29_load_reload \
    op interface \
    ports { m_29_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name m_30_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_30_load_reload \
    op interface \
    ports { m_30_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name m_31_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_31_load_reload \
    op interface \
    ports { m_31_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name m_32_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_32_load_reload \
    op interface \
    ports { m_32_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name m_33_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_33_load_reload \
    op interface \
    ports { m_33_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name m_34_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_34_load_reload \
    op interface \
    ports { m_34_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name m_35_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_35_load_reload \
    op interface \
    ports { m_35_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name m_36_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_36_load_reload \
    op interface \
    ports { m_36_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name m_37_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_37_load_reload \
    op interface \
    ports { m_37_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name m_38_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_38_load_reload \
    op interface \
    ports { m_38_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name m_39_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_39_load_reload \
    op interface \
    ports { m_39_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name m_40_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_40_load_reload \
    op interface \
    ports { m_40_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name m_41_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_41_load_reload \
    op interface \
    ports { m_41_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name m_42_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_42_load_reload \
    op interface \
    ports { m_42_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name m_43_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_43_load_reload \
    op interface \
    ports { m_43_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name m_44_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_44_load_reload \
    op interface \
    ports { m_44_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name m_45_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_45_load_reload \
    op interface \
    ports { m_45_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name m_46_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_46_load_reload \
    op interface \
    ports { m_46_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name m_47_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_47_load_reload \
    op interface \
    ports { m_47_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name m_48_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_48_load_reload \
    op interface \
    ports { m_48_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name m_49_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_49_load_reload \
    op interface \
    ports { m_49_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name m_50_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_50_load_reload \
    op interface \
    ports { m_50_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name m_51_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_51_load_reload \
    op interface \
    ports { m_51_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name m_52_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_52_load_reload \
    op interface \
    ports { m_52_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name m_53_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_53_load_reload \
    op interface \
    ports { m_53_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name m_54_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_54_load_reload \
    op interface \
    ports { m_54_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name m_55_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_55_load_reload \
    op interface \
    ports { m_55_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name m_56_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_56_load_reload \
    op interface \
    ports { m_56_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name m_57_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_57_load_reload \
    op interface \
    ports { m_57_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name m_58_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_58_load_reload \
    op interface \
    ports { m_58_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name m_59_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_59_load_reload \
    op interface \
    ports { m_59_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name m_60_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_60_load_reload \
    op interface \
    ports { m_60_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name m_61_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_61_load_reload \
    op interface \
    ports { m_61_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name m_62_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_62_load_reload \
    op interface \
    ports { m_62_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name m_63_load_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_63_load_reload \
    op interface \
    ports { m_63_load_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name a_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_a_3_out \
    op interface \
    ports { a_3_out { O 32 vector } a_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name b_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_3_out \
    op interface \
    ports { b_3_out { O 32 vector } b_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name c_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3_out \
    op interface \
    ports { c_3_out { O 32 vector } c_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name d_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_1_out \
    op interface \
    ports { d_1_out { O 32 vector } d_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name e_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_e_3_out \
    op interface \
    ports { e_3_out { O 32 vector } e_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name f_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_f_3_out \
    op interface \
    ports { f_3_out { O 32 vector } f_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name g_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_g_3_out \
    op interface \
    ports { g_3_out { O 32 vector } g_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name h_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_1_out \
    op interface \
    ports { h_1_out { O 32 vector } h_1_out_ap_vld { O 1 bit } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


# flow_control definition:
set InstName sha256_top_flow_control_loop_pipe_sequential_init_U
set CompName sha256_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sha256_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


