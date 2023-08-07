module IMix_colrow (Min, Mout);

input  [0:31] Min;
output [0:31] Mout;

wire [0:31] tempr1, tempr2, tempr3, tempr4;

IMode m1 (Min[0:7], tempr1[0:7]);
IMod9 m2 (Min[0:7], tempr1[8:15]);
IModd m3 (Min[0:7], tempr1[16:23]);
IModb m4 (Min[0:7], tempr1[24:31]);

IModb m5 (Min[8:15], tempr2[0:7]);
IMode m6 (Min[8:15], tempr2[8:15]);
IMod9 m7 (Min[8:15], tempr2[16:23]);
IModd m8 (Min[8:15], tempr2[24:31]);

IModd m9 (Min[16:23], tempr3[0:7]);
IModb m10 (Min[16:23], tempr3[8:15]);
IMode m11 (Min[16:23], tempr3[16:23]);
IMod9 m12 (Min[16:23], tempr3[24:31]);

IMod9 m13 (Min[24:31], tempr4[0:7]);
IModd m14 (Min[24:31], tempr4[8:15]);
IModb m15 (Min[24:31], tempr4[16:23]);
IMode m16 (Min[24:31], tempr4[24:31]);

assign Mout[0:7] = tempr1[0:7]^tempr2[0:7]^tempr3[0:7]^tempr4[0:7];
assign Mout[8:15] = tempr1[8:15]^tempr2[8:15]^tempr3[8:15]^tempr4[8:15];
assign Mout[16:23] = tempr1[16:23]^tempr2[16:23]^tempr3[16:23]^tempr4[16:23];
assign Mout[24:31] = tempr1[24:31]^tempr2[24:31]^tempr3[24:31]^tempr4[24:31];

endmodule
