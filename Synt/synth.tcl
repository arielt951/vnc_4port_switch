# =================================================================
# 1. SETUP LIBRARY PATHS (Confirmed)
# =================================================================
set LIB_PATH "/data/synopsys/lib/saed32nm/ref/CLIBs"
set TLU_PATH "/data/synopsys/lib/saed32nm/ref/tech"

set_host_options -max_cores 4

# =================================================================
# 2. CREATE WORKSPACE LIBRARY
# =================================================================
# It builds a database that links the logical (.db) and physical (.ndm) views.

set TECH_FILE "$TLU_PATH/saed32nm_1p9m.tf"
set REF_LIBS [list \
    "${LIB_PATH}/saed32_hvt.ndm" \
    "${LIB_PATH}/saed32_lvt.ndm" \
    "${LIB_PATH}/saed32_rvt.ndm" \
]

# Delete old library if it exists to avoid errors
if {[file exists switch_lib.dlib]} {
    file delete -force switch_lib.dlib
}

# Create and open the new library
create_lib -technology $TECH_FILE -ref_libs $REF_LIBS switch_lib.dlib

# Load Parasitic Models (TLU+) for accurate timing estimation
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
# 4. CONSTRAINTS (MCMM Setup)
# =================================================================
# We must define "Corners" (Best/Worst case) for Fusion Compiler
remove_corners -all; remove_modes -all; remove_scenarios -all

create_corner Fast
create_corner Slow
create_mode   FUNC

# Link TLU+ models to corners
set_parasitics_parameters -early_spec Cmin -late_spec Cmin -corners {Fast}
set_parasitics_parameters -early_spec Cmax -late_spec Cmax -corners {Slow}

# Create Scenarios (Combines Mode + Corner)
create_scenario -mode FUNC -corner Fast -name FUNC_Fast
create_scenario -mode FUNC -corner Slow -name FUNC_Slow

# Apply your constraints to both scenarios
current_scenario FUNC_Fast
source constraints.sdc

current_scenario FUNC_Slow
source constraints.sdc

# =================================================================
# 5. COMPILE 
# =================================================================
# Define basic floorplan rules (required for physical synthesis)
set_auto_floorplan_constraints -core_utilization 0.7 -side_ratio {1 1} -core_offset 2

# Run Logical Optimization
compile_fusion -to logic_opto

# Run Final Optimization (Gate mapping + Power)
compile_fusion -to final_opto

# =================================================================
# 6. REPORTS & EXPORT
# =================================================================
report_timing > report_timing.txt
report_power  > report_power.txt
report_area   > report_area.txt
report_qor    > report_qor.txt

# Write Gate-Level Netlist (Use this for your post-synth simulation)
change_names -rules verilog -hierarchy
write_verilog -hierarchy all switch_4port_netlist.v
write_sdf switch_4port.sdf

save_block -as switch_4port_final
exit