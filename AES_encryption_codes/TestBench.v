/////------
`timescale 1ns / 10ps

module TestBench;

reg rst, clk;
reg [0:127] Msg_in;
reg [0:255] key0;
wire done;
wire [0:127] Msg_out;


Encrypt DUT (Msg_in, key0, rst, clk, Msg_out, done);

initial 
begin
clk = 1'b0;
end

always 
begin
#1 clk = ~clk;
end

initial 
	begin
	Msg_in  = 128'h00112233445566778899aabbccddeeff;
	#2 key0 = 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
	#2 rst = 1'b1; 
	#2 rst = 1'b0;
	#100 $finish; 
	end

initial 
	begin
	$display("PLAINTEXT: 00112233445566778899aabbccddeeff");
	$display("KEY: 000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f");
	$monitor("OUTPUT [Done = %d]: %h", done, Msg_out);
	end
endmodule

