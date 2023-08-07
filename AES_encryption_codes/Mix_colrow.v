module Mix_colrow(Min, Mout);
input [0:31] Min;
output [0:31] Mout;

wire [0:31] tempr1, tempr2, tempr3, tempr4;

Mod2 m1 (Min[0:7], tempr1[0:7]);
Mod1 m2 (Min[0:7], tempr1[8:15]);
Mod1 m3 (Min[0:7], tempr1[16:23]);
Mod3 m4 (Min[0:7], tempr1[24:31]);

Mod3 m5 (Min[8:15], tempr2[0:7]);
Mod2 m6 (Min[8:15], tempr2[8:15]);
Mod1 m7 (Min[8:15], tempr2[16:23]);
Mod1 m8 (Min[8:15], tempr2[24:31]);

Mod1 m9 (Min[16:23], tempr3[0:7]);
Mod3 m10 (Min[16:23], tempr3[8:15]);
Mod2 m11 (Min[16:23], tempr3[16:23]);
Mod1 m12 (Min[16:23], tempr3[24:31]);

Mod1 m13 (Min[24:31], tempr4[0:7]);
Mod1 m14 (Min[24:31], tempr4[8:15]);
Mod3 m15 (Min[24:31], tempr4[16:23]);
Mod2 m16 (Min[24:31], tempr4[24:31]);

assign Mout[0:7]   = tempr1[0:7]^tempr2[0:7]^tempr3[0:7]^tempr4[0:7];
assign Mout[8:15]  = tempr1[8:15]^tempr2[8:15]^tempr3[8:15]^tempr4[8:15];
assign Mout[16:23] = tempr1[16:23]^tempr2[16:23]^tempr3[16:23]^tempr4[16:23];
assign Mout[24:31] = tempr1[24:31]^tempr2[24:31]^tempr3[24:31]^tempr4[24:31];

endmodule
