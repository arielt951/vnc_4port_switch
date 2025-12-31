#!/bin/bash

# 1. Define Assertions
ASSERTIONS="../verification/assertions.sv"

# 2. Define the Simulation Library (SAED32)
# We found the NDM at /data/synopsys/lib/saed32nm/ref/CLIBs
# The Verilog models are usually nearby in ../std/verilog or ../verilog
# TRY THIS PATH FIRST:
SAED32_VRG="/data/synopsys/lib/saed32nm/lib/std/verilog/saed32nm.v"

# If the simulation complains "File not found", run this command to find the real one:
# find /data/synopsys -name "saed32nm.v"

# 3. Choose which netlist to simulate (Standard or Low Power)
# NETLIST="switch_4port_netlist.v"  # Standard
NETLIST="switch_4port_cg.v"      # Low Power (Uncomment to test CG)

# 4. Run VCS
vcs -sverilog -debug_access+all -full64 \
    -timescale=1ns/1ps \
    -v $SAED32_VRG \
    +define+SDF_ANNOTATE \
    ../design/packet_pkg.sv \
    ../design/port_if.sv \
    $ASSERTIONS \
    ../verification/component_base.sv \
    ../verification/packet_vc.sv \
    ../verification/monitor.sv \
    ../verification/sequencer.sv \
    ../verification/driver.sv \
    ../verification/agent.sv \
    ../verification/checker.sv \
    ../verification/switch_test.sv \
    $NETLIST \
    -o simv_gls

# 5. Check Result
if [ $? -eq 0 ]; then
    echo "GLS Compilation Successful. Running Simulation..."
    ./simv_gls
else
    echo "GLS Compilation Failed!"
fi