module Initial_round (Msg_in, key0, Roneop);

input  [0:127] Msg_in, key0;
output [0:127] Roneop;

assign Roneop = Msg_in^key0;

endmodule
