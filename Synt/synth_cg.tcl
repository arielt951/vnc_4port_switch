# =================================================================
# 1. SETUP LIBRARY PATHS
# =================================================================
set LIB_PATH "/data/synopsys/lib/saed32nm/ref/CLIBs"
set TLU_PATH "/data/synopsys/lib/saed32nm/ref/tech"
set_host_options -max_cores 4

set TECH_FILE "$TLU_PATH/saed32nm_1p9m.tf"
set REF_LIBS [list \
    "${LIB_PATH}/saed32_hvt.ndm" \
    "${LIB_PATH}/saed32_lvt.ndm" \
    "${LIB_PATH}/saed32_rvt.ndm" \
]

if {[file exists switch_cg.dlib]} { file delete -force switch_cg.dlib }
create_lib -technology $TECH_FILE -ref_libs $REF_LIBS switch_cg.dlib

read_parasitic_tech -tlu $TLU_PATH/saed32nm_1p9m_Cmax.lv.tluplus -name Cmax
read_parasitic_tech -tlu $TLU_PATH/saed32nm_1p9m_Cmin.lv.tluplus -name Cmin

# =================================================================
# 2. READ & ELABORATE
# =================================================================
set HDL_FILES { 
    ../design/packet_pkg.sv 
    ../design/port_if.sv 
    ../design/FIFO.sv 
    ../design/arbiter.sv 
    ../design/parser.sv 
    ../design/output_mux.sv 
    ../design/switch_port.sv 
    ../design/switch_4port.sv 
}

analyze -format sverilog $HDL_FILES
elaborate switch_4port
set_top_module switch_4port

# =================================================================
# 3. CONSTRAINTS
# =================================================================
remove_corners -all; remove_modes -all; remove_scenarios -all
create_corner Fast; create_corner Slow; create_mode FUNC

set_parasitics_parameters -early_spec Cmin -late_spec Cmin -corners {Fast}
set_parasitics_parameters -early_spec Cmax -late_spec Cmax -corners {Slow}

create_scenario -mode FUNC -corner Fast -name FUNC_Fast
create_scenario -mode FUNC -corner Slow -name FUNC_Slow

current_scenario FUNC_Fast; source constraints.sdc
current_scenario FUNC_Slow; source constraints.sdc

# =================================================================
# 4. COMPILE WITH CLOCK GATING
# =================================================================
# The correct way to enable Clock Gating in FC is to enable Total Power Optimization.
# The tool will insert clock gates to reduce dynamic power.
set_app_options -name opt.power.mode -value total

# Optional: Configure minimum bit width (default is usually 3 or 4)
# set_app_options -name clock_gating.minimum_bit_width -value 4

set_auto_floorplan_constraints -core_utilization 0.7 -side_ratio {1 1} -core_offset 2

compile_fusion -to logic_opto
compile_fusion -to final_opto

# =================================================================
# 5. REPORTS
# =================================================================
report_timing > report_timing_cg.txt
report_power  > report_power_cg.txt

# WRITE FILES
write_verilog -hierarchy all switch_4port_cg.v
write_sdf switch_4port_cg.sdf
save_block -as switch_4port_cg_final
exit