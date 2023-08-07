module Sub_byter(Sbr_in, Sbr_out);

input [0:127] Sbr_in;
output [0:127] Sbr_out;

//COL 1
Sub_byte sbr1 (Sbr_in[0:7], Sbr_out[0:7]);
Sub_byte sbr2 (Sbr_in[8:15], Sbr_out[8:15]);
Sub_byte sbr3 (Sbr_in[16:23], Sbr_out[16:23]);
Sub_byte sbr4 (Sbr_in[24:31], Sbr_out[24:31]);

//COL 2
Sub_byte sbr5 (Sbr_in[32:39], Sbr_out[32:39]);
Sub_byte sbr6 (Sbr_in[40:47], Sbr_out[40:47]);
Sub_byte sbr7 (Sbr_in[48:55], Sbr_out[48:55]);
Sub_byte sbr8 (Sbr_in[56:63], Sbr_out[56:63]);

//COL 3
Sub_byte sbr9 (Sbr_in[64:71], Sbr_out[64:71]);
Sub_byte sbr10 (Sbr_in[72:79], Sbr_out[72:79]);
Sub_byte sbr11 (Sbr_in[80:87], Sbr_out[80:87]);
Sub_byte sbr12 (Sbr_in[88:95], Sbr_out[88:95]);

//COL 4
Sub_byte sbr13 (Sbr_in[96:103], Sbr_out[96:103]);
Sub_byte sbr14 (Sbr_in[104:111], Sbr_out[104:111]);
Sub_byte sbr15 (Sbr_in[112:119], Sbr_out[112:119]);
Sub_byte sbr16 (Sbr_in[120:127], Sbr_out[120:127]);

endmodule


