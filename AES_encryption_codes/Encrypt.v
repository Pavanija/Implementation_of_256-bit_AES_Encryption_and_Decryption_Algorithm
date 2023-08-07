module Encrypt (Msg_in, Key0, Rst, Clk, Msg_out, Done);

input [0:127] Msg_in;
input [0:255] Key0;
input Rst, Clk;
output reg Done;
output reg [0:127] Msg_out;

reg  [0:255] Ki_0;
wire [0:127] Ki_1, Ki_2, Ki_3, Ki_4, Ki_5, Ki_6, Ki_7, Ki_8, Ki_9, Ki_A, Ki_B, Ki_C, Ki_D;
reg  [0:127] Mr0, Mr1, Mr2, Kr0, Kr1, Kr2;
wire [0:127] Emr0, Emr1, Emr2;

reg [0:127] K1, K2, K3, K4, K5, K6, K7, K8, K9, KA, KB, KC, KD;
//reg [0:127] E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, EA, EB, EC, ED;

reg [0:4]   count;

//Key Generation
key_gen_r gen (Ki_0, Ki_1, Ki_2, Ki_3, Ki_4, Ki_5, Ki_6, Ki_7, Ki_8, Ki_9, Ki_A, Ki_B, Ki_C, Ki_D);

//Initial Round - 1
Initial_round R1 (Mr0, Kr0, Emr0);

//Main Rounds - 13
Main_rounds   R2 (Mr1, Kr1, Emr1);

//Last Round - 1
Last_round    RF (Mr2, Kr2, Emr2);


always @(posedge Clk)
begin
if (Rst == 1'b1)
	begin 
		count = 5'b0;
		Done = 1'b0;
	end
else
	begin
	if ((Done == 1'b0))//(Start == 1'b1) & (Done == 1'b0)
		begin
		if (count == 5'h0)
			begin
				Ki_0 = Key0; 
				Mr0 = Msg_in; Kr0 = Key0[0:127];
			end
		else if (count == 5'h1)
			begin
				K1 = Ki_1; K2 = Ki_2; K3 = Ki_3; K4 = Ki_4; K5 = Ki_5; K6 = Ki_6;
				K7 = Ki_7; K8 = Ki_8; K9 = Ki_9; KA = Ki_A; KB = Ki_B; KC = Ki_C;  KD = Ki_D;
				Mr1 = Emr0; Kr1 = Key0[128:255]; 
			end
		else if (count == 5'h2)
			begin
				Mr1 = Emr1; Kr1 = K1; 
			end
		else if (count == 5'h3)
			begin
				Mr1 = Emr1; Kr1 = K2; 
			end
		else if (count == 5'h4)
			begin
				Mr1 = Emr1; Kr1 = K3; 
			end
		else if (count == 5'h5)
			begin
				Mr1 = Emr1; Kr1 = K4; 
			end
		else if (count == 5'h6)
			begin
				Mr1 = Emr1; Kr1 = K5; 
			end
		else if (count == 5'h7)
			begin
				Mr1 = Emr1; Kr1 = K6; 
			end
		else if (count == 5'h8)
			begin
				Mr1 = Emr1; Kr1 = K7; 
			end
		else if (count == 5'h9)
			begin
				Mr1 = Emr1; Kr1 = K8; 
			end
		else if (count == 5'hA)
			begin
				Mr1 = Emr1; Kr1 = K9; 
			end
		else if (count == 5'hB)
			begin
				Mr1 = Emr1; Kr1 = KA; 
			end
		else if (count == 5'hC)
			begin
				Mr1 = Emr1; Kr1 = KB; 
			end
		else if (count == 5'hD)
			begin
				Mr1 = Emr1; Kr1 = KC; 
			end
		else if (count == 5'hE)
			begin
				Mr2 <= Emr1; Kr2 <= KD; 
			end
		else 
			begin
				Msg_out = Emr2;
				Done = 1'b1;
			end
		count = count + 5'h1;
		end
	end
end

endmodule

