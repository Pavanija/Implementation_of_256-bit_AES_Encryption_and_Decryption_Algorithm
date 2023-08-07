module Rcon_c (keyid, R0, R1, R2, R3);

input  [0:3] keyid;
output [0:7] R0, R1, R2, R3;

reg  [0:7] rc_in0, rc_in1, rc_in2, rc_in3;
wire [0:7] rc_out0, rc_out1, rc_out2, rc_out3;

Rcon r1 (rc_in0, rc_out0);
Rcon r2 (rc_in1, rc_out1);
Rcon r3 (rc_in2, rc_out2);
Rcon r4 (rc_in3, rc_out3);

always@(keyid)
begin
	case (keyid)
	
		4'h1 : begin rc_in0 = 8'h00; rc_in1 = 8'h10; rc_in2 = 8'h20; rc_in3 = 8'h30; end
				
	
		4'h2 : begin rc_in0 = 8'h01; rc_in1 = 8'h11; rc_in2 = 8'h21; rc_in3 = 8'h31; end
				

		4'h3 : begin rc_in0 = 8'h02; rc_in1 = 8'h12; rc_in2 = 8'h22; rc_in3 = 8'h33; end
				

		4'h4 : begin rc_in0 = 8'h03; rc_in1 = 8'h13; rc_in2 = 8'h23; rc_in3 = 8'h33; end
			
	
		4'h5 : begin rc_in0 = 8'h04; rc_in1 = 8'h14; rc_in2 = 8'h24; rc_in3 = 8'h34; end
			
			
		4'h6 : begin rc_in0 = 8'h05; rc_in1 = 8'h15; rc_in2 = 8'h25; rc_in3 = 8'h35; end
				

		4'h7 : begin rc_in0 = 8'h06; rc_in1 = 8'h16; rc_in2 = 8'h26; rc_in3 = 8'h36; end
				

		4'h8 : begin rc_in0 = 8'h07; rc_in1 = 8'h17; rc_in2 = 8'h27; rc_in3 = 8'h37; end
				

		4'h9 : begin rc_in0 = 8'h08; rc_in1 = 8'h18; rc_in2 = 8'h28; rc_in3 = 8'h38; end
				

		4'hA : begin rc_in0 = 8'h09; rc_in1 = 8'h19; rc_in2 = 8'h29; rc_in3 = 8'h39; end
				
		default : begin rc_in0 = 8'h00; rc_in1 = 8'h00; rc_in2 = 8'h00; rc_in3 = 8'h00; end
	endcase

end

assign R0 = rc_out0; 
assign R1 = rc_out1; 
assign R2 = rc_out2; 
assign R3 = rc_out3;	

endmodule
