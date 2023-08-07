module Shift_rowr(Stin, Stout);

input [0:127] Stin;
output [0:127] Stout;

assign Stout[0:7] = Stin[0:7];
assign Stout[8:15] = Stin[40:47];
assign Stout[16:23] = Stin[80:87];
assign Stout[24:31] = Stin[120:127];

assign Stout[32:39] = Stin[32:39];
assign Stout[40:47] = Stin[72:79];
assign Stout[48:55] = Stin[112:119];
assign Stout[56:63] = Stin[24:31];

assign Stout[64:71] = Stin[64:71];
assign Stout[72:79] = Stin[104:111];
assign Stout[80:87] = Stin[16:23];
assign Stout[88:95] = Stin[56:63];

assign Stout[96:103] = Stin[96:103];
assign Stout[104:111] = Stin[8:15];
assign Stout[112:119] = Stin[48:55];
assign Stout[120:127] = Stin[88:95];

endmodule
