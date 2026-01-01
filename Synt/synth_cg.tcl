# =================================================================
# 1. SETUP LIBRARY PATHS
# =================================================================
set LIB_PATH "/data/synopsys/lib/saed32nm/ref/CLIBs"
set TLU_PATH "/data/synopsys/lib/saed32nm/ref/tech"

set_host_options -max_cores 4

# =================================================================
# 2. CREATE WORKSPACE LIBRARY
# =================================================================
set TECH_FILE "$TLU_PATH/saed32nm_1p9m.tf"
set REF_LIBS [list \
    "${LIB_PATH}/saed32_hvt.ndm" \
    "${LIB_PATH}/saed32_lvt.ndm" \
    "${LIB_PATH}/saed32_rvt.ndm" \
]

# Delete old library if it exists to avoid errors
if {[file exists switch_lib_cg.dlib]} {
    file delete -force switch_lib_cg.dlib
}

# Create and open the new library (Note the _cg name)
create_lib -technology $TECH_FILE -ref_libs $REF_LIBS switch_lib_cg.dlib

# Load Parasitic Models
read_parasitic_tech -tlu $TLU_PATH/saed32nm_1p9m_Cmax.lv.tluplus -name Cmax
read_parasitic_tech -tlu $TLU_PATH/saed32nm_1p9m_Cmin.lv.tluplus -name Cmin

# =================================================================
# 3. READ & ELABORATE
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
# 4. CLOCK GATING SETUP (*** NEW SECTION ***)
# =================================================================
# This command enables clock gating insertion.
# -minimum_bitwidth 3: Only gate registers if they are 3 bits or wider.
# -sequential_cell latch: Use a latch-based clock gater (standard safe method).
# -control_point before: Place logic before the latch.
set_clock_gating_style -sequential_cell latch -minimum_bitwidth 3 -control_point before

# =================================================================
# 5. CONSTRAINTS (MCMM Setup)
# =================================================================
remove_corners -all; remove_modes -all; remove_scenarios -all

create_corner Fast
create_corner Slow
create_mode   FUNC

# Link TLU+ models to corners
set_parasitics_parameters -early_spec Cmin -late_spec Cmin -corners {Fast}
set_parasitics_parameters -early_spec Cmax -late_spec Cmax -corners {Slow}

# Create Scenarios
create_scenario -mode FUNC -corner Fast -name FUNC_Fast
create_scenario -mode FUNC -corner Slow -name FUNC_Slow

# Apply your constraints
current_scenario FUNC_Fast
source constraints.sdc

current_scenario FUNC_Slow
source constraints.sdc

# =================================================================
# 6. COMPILE (With Clock Gating)
# =================================================================
set_auto_floorplan_constraints -core_utilization 0.7 -side_ratio {1 1} -core_offset 2

# Explicitly insert clock gating logic before compilation
# (Fusion Compiler often does this automatically if style is set, but this ensures it)
insert_clock_gating

# Run Logical Optimization
compile_fusion -to logic_opto

# Run Final Optimization
compile_fusion -to final_opto

# =================================================================
# 7. REPORTS & EXPORT (Renamed to *_cg)
# =================================================================
# Notice the _cg suffixes. These are crucial for your comparison report!
report_timing > report_timing_cg.txt
report_power  > report_power_cg.txt
report_area   > report_area_cg.txt
report_qor    > report_qor_cg.txt
report_clock_gating > report_clock_gating_cg.txt

# Write Gate-Level Netlist
change_names -rules verilog -hierarchy
write_verilog -hierarchy all switch_4port_netlist_cg.v
write_sdf switch_4port_cg.sdf

save_block -as switch_4port_final_cg
exit