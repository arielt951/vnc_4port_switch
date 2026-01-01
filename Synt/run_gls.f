// -----------------------------------------------------------
// 1. Packages & Interfaces (Must be first)
// -----------------------------------------------------------
../design/packet_pkg.sv
../design/port_if.sv

// -----------------------------------------------------------
// 2. Verification Components 
// (Explicitly listed because packet_pkg excludes them in GLS mode)
// -----------------------------------------------------------
../verification/component_base.sv
../verification/sequencer.sv
../verification/driver.sv
../verification/monitor.sv
../verification/agent.sv
../verification/packet_vc.sv
../verification/checker.sv
../verification/assertions.sv

// -----------------------------------------------------------
// 3. DUT Wrapper & Netlist
// -----------------------------------------------------------
../verification/dut_wrapper.sv
./switch_4port_netlist.v

// -----------------------------------------------------------
// 4. Testbench Top
// -----------------------------------------------------------
../verification/switch_test.sv

// -----------------------------------------------------------
// 5. Standard Cell Libraries
// (The definitions for the gates inside the netlist)
// -----------------------------------------------------------
-v /data/synopsys/lib/SAED32_EDK/lib/stdcell_hvt/verilog/saed32nm_hvt.v
-v /data/synopsys/lib/SAED32_EDK/lib/stdcell_rvt/verilog/saed32nm.v
-v /data/synopsys/lib/SAED32_EDK/lib/stdcell_lvt/verilog/saed32nm_lvt.v