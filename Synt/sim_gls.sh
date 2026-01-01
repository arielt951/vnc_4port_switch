vcs -sverilog -debug_access+all -full64 -kdb \
    -timescale=1ns/1ps \
    -top switch_test \
    -v /data/synopsys/lib/saed32nm/lib/std/verilog/saed32nm.v \
    +define+SDF_ANNOTATE \
    ../design/packet_pkg.sv \
    ../design/port_if.sv \
    ../verification/assertions.sv \
    ../verification/component_base.sv \
    ../verification/packet_vc.sv \
    ../verification/monitor.sv \
    ../verification/sequencer.sv \
    ../verification/driver.sv \
    ../verification/agent.sv \
    ../verification/checker.sv \
    ../verification/switch_test.sv \
    switch_4port_cg.v \
    -o simv_gls