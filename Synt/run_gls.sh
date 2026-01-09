#!/bin/bash

# 1. Define Paths (Found via your search)
# We include HVT, RVT, and LVT to ensure all cell types are covered.
HVT="/data/synopsys/lib/SAED32_EDK/lib/stdcell_hvt/verilog/saed32nm_hvt.v"
RVT="/data/synopsys/lib/SAED32_EDK/lib/stdcell_rvt/verilog/saed32nm.v"
LVT="/data/synopsys/lib/SAED32_EDK/lib/stdcell_lvt/verilog/saed32nm_lvt.v"

NETLIST="./switch_4port_netlist.v"

# 2. Compile
# Notice we now use multiple -v flags to include all library files
vcs -sverilog -debug_access+all -debug_region+cell+lib -full64 -kdb \
    -timescale=1ns/1ps \
    -top switch_test \
    -v $HVT \
    -v $RVT \
    -v $LVT \
    +define+SDF_ANNOTATE \
    ../design/packet_pkg.sv \
    ../design/port_if.sv \
    ../verification/assertions.sv \
    ../verification/component_base.sv \
    ../verification/monitor.sv \
    ../verification/sequencer.sv \
    ../verification/checker.sv \
    ../verification/driver.sv \
    ../verification/agent.sv \
    ../verification/packet_vc.sv \
    ../verification/dut_wrapper.sv \
    ../verification/switch_test.sv \
    $NETLIST \
    -o simv_gls

# 3. Launch
if [ $? -eq 0 ]; then
    echo "GLS Compilation Successful. Launching Verdi..."
    ./simv_gls -gui=verdi
else
    echo "GLS Compilation Failed!"
fi
