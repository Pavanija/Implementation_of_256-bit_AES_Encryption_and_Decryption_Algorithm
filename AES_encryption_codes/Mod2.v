module Mod2 (Sin, Sout);

input [7:0] Sin;
output reg [7:0] Sout;

always@ (Sin)
begin
case (Sin[7])
	1'b0: Sout = {Sin[6:0], 1'b0};
	1'b1: Sout = {Sin[6:0], 1'b0}^8'h1b;
endcase
end

endmodule
