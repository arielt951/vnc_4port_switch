class c_3_1;
    rand bit[3:0] source; // rand_mode = ON 
    rand bit[3:0] target; // rand_mode = ON 

    constraint valid_source_c_this    // (constraint_mode = ON) (design/packet_pkg.sv:36)
    {
       (($countones(source)) == 1);
    }
    constraint no_loopback_c_this    // (constraint_mode = ON) (design/packet_pkg.sv:46)
    {
       ((source & target) == 4'h0);
    }
    constraint target_bdp_c_this    // (constraint_mode = ON) (design/packet_pkg.sv:132)
    {
       (target == 4'hf);
    }
endclass

program p_3_1;
    c_3_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111x0zxz0zxzxzz0zzz00zzz10x1100zxzxxzxxzxzxzxxxzzxxzxzzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
