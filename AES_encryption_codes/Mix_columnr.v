module Mix_columnr(Min, Mout);
input [0:127] Min;
output [0:127] Mout;

Mix_colrow mr1 (Min[0:31], Mout[0:31]);
Mix_colrow mr2 (Min[32:63], Mout[32:63]);
Mix_colrow mr3 (Min[64:95], Mout[64:95]);
Mix_colrow mr4 (Min[96:127], Mout[96:127]);

endmodule

