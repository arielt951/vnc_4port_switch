class checker extends component_base;

// 1. Connectivity
monitor mon_h[4]; 

// 2. The Scoreboard (Golden Reference)
// scb_queue[0] holds packets expected at Port 0, etc.
packet scb_queue[4][$];

// 3. Stats
int matchess;
int mismatches;

function new(string n, component_base p=null);
  super.new(n,p);
  matchess = 0;
  mismatches = 0;
endfunction

// ----------------------------------------------------------------
// TASK: Add Expected Packet (Called by Monitor or Test)
// ----------------------------------------------------------------
function void add_expected_packet(packet p);
  packet p_clone;
  
  // Create a safe snapshot of the packet (Shallow Copy)
  p_clone = new p; 
  
  // ROUTING LOGIC:
  // Iterate through all 4 potential target bits
  for(int i=0; i<4; i++) begin
	// If the i-th bit is 1, the packet is expected at Port i
	if (p.target[i] == 1) begin
	  scb_queue[i].push_back(p_clone);
	end
  end
endfunction

// ----------------------------------------------------------------
// TASK: Run (The Checking Loop)
// ----------------------------------------------------------------
task run();
  // Launch threads for each monitor
  foreach(mon_h[i]) begin
	
	// SAFETY CHECK: Only start checking if the monitor is connected
	// This prevents crashes in vc_test where only Port 0 is used.
	if (mon_h[i] != null) begin
	  
	  fork
		automatic int k = i; // Copy index for safe forking
		check_port(k);       // Matches the task name defined below
	  join_none
	  
	end
  end
  wait fork;
endtask

// ----------------------------------------------------------------
// TASK: Check Port (Helper Task)
// ----------------------------------------------------------------
task check_port(int port_idx);
  packet received_pkt;
  packet expected_pkt;
  
  forever begin
	// 1. Wait for the Monitor to see a packet
	mon_h[port_idx].mon_mbx.get(received_pkt);
	
	// 2. Verify: Did we expect anything at this port?
	if (scb_queue[port_idx].size() == 0) begin
	  $error("[Checker] ERROR: Unexpected packet received on Port %0d. ID: %0d", 
			 port_idx, received_pkt.packet_id);
	  mismatches++;
	end 
	else begin
	  // 3. Get the oldest expected packet
	  expected_pkt = scb_queue[port_idx].pop_front();
	  
	  // 4. Compare Actual vs Expected
	  if (compare_packets(expected_pkt, received_pkt)) begin
		$display("[Checker] SUCCESS: Packet ID %0d matched on Port %0d", 
				 received_pkt.packet_id, port_idx);
		matchess++;
	  end else begin
		$error("[Checker] ERROR: Mismatch on Port %0d. Exp ID: %0d, Got ID: %0d", 
			   port_idx, expected_pkt.packet_id, received_pkt.packet_id);
		received_pkt.print("RECEIVED");
		expected_pkt.print("EXPECTED");
		mismatches++;
	  end
	end
  end
endtask

// Simple field-by-field comparison
function bit compare_packets(packet exp, packet rcv);
  if (exp.source !== rcv.source) return 0;
  if (exp.target !== rcv.target) return 0;
  if (exp.data   !== rcv.data)   return 0;
  return 1;
endfunction

function void report();
    int pending_packets = 0;
    
    // Calculate total remaining items in all queues
    foreach(scb_queue[i]) begin
      pending_packets += scb_queue[i].size();
    end

    $display("\n-----------------------------------------");
    $display(" CHECKER SUMMARY");
    $display(" Matches:          %0d", matchess);
    $display(" Mismatches:       %0d", mismatches);
    $display(" Pending (Lost):   %0d", pending_packets); // <--- NEW LINE
    $display("-----------------------------------------\n");
    
    if (pending_packets > 0) $error("TEST FAILED: %0d packets were expected but never arrived!", pending_packets);
  endfunction

endclass