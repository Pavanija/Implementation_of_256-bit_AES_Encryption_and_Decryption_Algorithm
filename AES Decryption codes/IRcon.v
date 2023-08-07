module IRcon (Rin, Rout);

input		  [0:7] Rin;
output reg [0:7] Rout;

always@(Rin)
begin
	case(Rin)
		8'h00 : Rout = 8'h01; 8'h10: Rout = 8'h00; 8'h20: Rout = 8'h00; 8'h30: Rout = 8'h00;
		8'h01 : Rout = 8'h02; 8'h11: Rout = 8'h00; 8'h21: Rout = 8'h00; 8'h31: Rout = 8'h00;
		8'h02 : Rout = 8'h04; 8'h12: Rout = 8'h00; 8'h22: Rout = 8'h00; 8'h32: Rout = 8'h00;
		8'h03 : Rout = 8'h08; 8'h13: Rout = 8'h00; 8'h23: Rout = 8'h00; 8'h33: Rout = 8'h00;
		8'h04 : Rout = 8'h10; 8'h14: Rout = 8'h00; 8'h24: Rout = 8'h00; 8'h34: Rout = 8'h00;
		8'h05 : Rout = 8'h20; 8'h15: Rout = 8'h00; 8'h25: Rout = 8'h00; 8'h35: Rout = 8'h00;
		8'h06 : Rout = 8'h40; 8'h16: Rout = 8'h00; 8'h26: Rout = 8'h00; 8'h36: Rout = 8'h00;
		8'h07 : Rout = 8'h80; 8'h17: Rout = 8'h00; 8'h27: Rout = 8'h00; 8'h37: Rout = 8'h00;
		8'h08 : Rout = 8'h1B; 8'h18: Rout = 8'h00; 8'h28: Rout = 8'h00; 8'h38: Rout = 8'h00;
		8'h09 : Rout = 8'h36; 8'h19: Rout = 8'h00; 8'h29: Rout = 8'h00; 8'h39: Rout = 8'h00;
		default : Rout = 8'h00;
	endcase
end

endmodule
