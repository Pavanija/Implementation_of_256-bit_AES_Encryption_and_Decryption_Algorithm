module IMix_columnr (Min, Mout);

input  [0:127] Min;
output [0:127] Mout;

IMix_colrow mr1 (Min[0:31], Mout[0:31]);
IMix_colrow mr2 (Min[32:63], Mout[32:63]);
IMix_colrow mr3 (Min[64:95], Mout[64:95]);
IMix_colrow mr4 (Min[96:127], Mout[96:127]);

endmodule

