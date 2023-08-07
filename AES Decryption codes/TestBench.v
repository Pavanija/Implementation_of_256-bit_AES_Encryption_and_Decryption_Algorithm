/////------
`timescale 1ns / 1ps

module TestBench;

reg start, rst, clk;
reg [0:127] Msg_in;
reg [0:255] key0;
wire done;
wire [0:127] Msg_out;

reg [0:3] count;

IEncrypt DUT (Msg_in, key0, start, rst, clk, Msg_out, done);

initial 
begin
clk = 1'b0; 
count = 4'd0;
end

always 
begin
#50 clk = ~clk; 
if(clk == 1'b1) count = count + 4'd1;
end

initial 
	begin
	Msg_in  = 128'h8ea2b7ca516745bfeafc49904b496089;
	#2 key0 = 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
	#2 rst = 1'b1; 
	#2 start = 1'b1;
	#110 rst = 1'b0;
	#1800 $stop; 
	end

initial 
	begin
	$display("PLAINTEXT: 8ea2b7ca516745bfeafc49904b496089");
	$display("KEY: 000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f");
	$monitor("OUTPUT [Done = %d]: %h", done, Msg_out);
	end
endmodule

