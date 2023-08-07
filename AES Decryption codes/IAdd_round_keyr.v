module IAdd_round_keyr (R_in, Rkey_in, Rop);

input  [0:127] R_in, Rkey_in;
output [0:127] Rop;

assign Rop = R_in^Rkey_in;

endmodule
