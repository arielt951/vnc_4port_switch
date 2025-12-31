# =================================================================
# 1. SETUP LIBRARY PATHS (SAME AS synth.tcl)
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

# Create a fresh library for the Low Power run
if {[file exists switch_cg.dlib]} {
    file delete -force switch_cg.dlib
}
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
create_corner Fast
create_corner Slow
create_mode   FUNC

set_parasitics_parameters -early_spec Cmin -late_spec Cmin -corners {Fast}
set_parasitics_parameters -early_spec Cmax -late_spec Cmax -corners {Slow}

create_scenario -mode FUNC -corner Fast -name FUNC_Fast
create_scenario -mode FUNC -corner Slow -name FUNC_Slow

current_scenario FUNC_Fast
source constraints.sdc
current_scenario FUNC_Slow
source constraints.sdc

# =================================================================
# 4. CLOCK GATING (THE KEY DIFFERENCE)
# =================================================================
# We insert clock gating logic BEFORE compilation
set_clock_gating_style -minimum_bit_width 4 -positive_edge_logic {integrated}
insert_clock_gating

# =================================================================
# 5. COMPILE
# =================================================================
set_auto_floorplan_constraints -core_utilization 0.7 -side_ratio {1 1} -core_offset 2

compile_fusion -to logic_opto
compile_fusion -to final_opto

# =================================================================
# 6. REPORTS
# =================================================================
report_timing > report_timing_cg.txt
report_power  > report_power_cg.txt
report_area   > report_area_cg.txt
report_qor    > report_qor_cg.txt

# Save the Low Power Netlist
write_verilog -hierarchy all switch_4port_cg.v
write_sdf switch_4port_cg.sdf

save_block -as switch_4port_cg_final
exit