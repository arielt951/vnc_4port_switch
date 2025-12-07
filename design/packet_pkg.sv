package packet_pkg;
	// -----------------------------------------------------------
	// 1. GLOBAL CONSTANTS
	// -----------------------------------------------------------
	parameter int PACKET_WIDTH = 16;
	parameter int ADDR_WIDTH = 4;
	parameter int DEPTH      = 8;
	parameter int DATA_WIDTH  = 8;
	parameter int NUM_PORTS = 4 ;

	// -----------------------------------------------------------
	// 2. ENUMS
	// -----------------------------------------------------------
	typedef enum logic [1:0] {IDLE, ROUTE, ARB_WAIT, TRANSMIT} state_t;
	typedef enum logic [1:0] {ERR, SDP, MDP, BDP} p_type;

	typedef class checker;

	// -----------------------------------------------------------
	// 3. BASE PACKET CLASS
	// -----------------------------------------------------------
	class packet;
		// Randomizable fields
		rand logic [ADDR_WIDTH-1:0] source;
		rand logic [ADDR_WIDTH-1:0] target;
		rand logic [DATA_WIDTH-1:0] data;
		
		// Internal variables
		string name;
		p_type pkt_type; // Derived type
		
		// Static counter for tracking packet instances
		static int pkt_count = 0;
		int packet_id;

		// -------------------------------------------------------
		// CONSTRAINTS (Validity Rules)
		// -------------------------------------------------------
		// Source must be One-Hot (only 1 bit set)
		constraint valid_source_c {
			$countones(source) == 1;
		}

		// Target cannot be empty
		constraint valid_target_c {
			target != 4'b0000;
		}

		// No Self-Loop (Source and Target cannot overlap)
		constraint no_loopback_c {
			(source & target) == 0;
		}

		// -------------------------------------------------------
		// CONSTRUCTOR
		// Accepts name and numeric port index (0-3)
		// -------------------------------------------------------
		function new(string name = "packet_obj", int port_index = 0);
			this.name = name;
			this.pkt_type = ERR; // Default
			
			// Auto-generate one-hot encoding from integer index
			// e.g., index 0 -> 0001, index 2 -> 0100
			this.source = 1 << port_index; 

			// Manage Static ID
			this.packet_id = pkt_count;
			pkt_count++;
		endfunction

		// -------------------------------------------------------
		// GETTERS
		// -------------------------------------------------------
		function p_type get_type();
			return pkt_type;
		endfunction

		function string get_name();
			return name;
		endfunction

		// -------------------------------------------------------
		// METHODS
		// -------------------------------------------------------
		
		// Enhanced Print Method (Supports multiple formats)
		function void print(string tag = "");
			$display("[%s] ID:%0d Name:%s | Src:%b Tgt:%b | Data(Hex):%h Data(Dec):%0d | Type:%s", 
					 tag, packet_id, name, source, target, data, data, pkt_type.name());
		endfunction

		// Calculate Type Method (Updates pkt_type based on target)
		function void calc_type();
			int ones;
			ones = $countones(target);
			if (ones == 1)             pkt_type = SDP;
			else if (ones > 1 && ones < 4) pkt_type = MDP;
			else if (ones == 4)        pkt_type = BDP;
			else                       pkt_type = ERR;
		endfunction
		
		// Optional: Post-randomize to ensure type is updated immediately after randomization
		function void post_randomize();
			calc_type();
		endfunction

	endclass

	// -----------------------------------------------------------
	// 4. DERIVED CLASSES (Structure Constraints)
	// -----------------------------------------------------------

	// Single Destination Packet
	class sdp_packet extends packet;
		constraint target_sdp_c {
			$countones(target) == 1;
		}
		function new(string name = "sdp_obj", int port_index = 0);
			super.new(name, port_index);
		endfunction
	endclass

	// Multicast Destination Packet
	class mdp_packet extends packet;
		constraint target_mdp_c {
			$countones(target) > 1;
			$countones(target) < 4;
		}
		function new(string name = "mdp_obj", int port_index = 0);
			super.new(name, port_index);
		endfunction
	endclass

	// Broadcast Destination Packet
	class bdp_packet extends packet;
		constraint target_bdp_c {
			target == 4'b1111;
		}
		function new(string name = "bdp_obj", int port_index = 0);
			super.new(name, port_index);
		endfunction
	endclass

	// -----------------------------------------------------------
    // 5. COMPONENT INCLUDES
    // -----------------------------------------------------------
    // NOTE: Order matters! Base classes must come before children.
    
    `include "component_base.sv"
    `include "sequencer.sv"
    `include "driver.sv"
    `include "monitor.sv"
    `include "agent.sv"
    `include "checker.sv"   
    `include "packet_vc.sv"

endpackage