module Key_generation (kin, keyid, kout);

input  [0:3]   keyid;
input  [0:255] kin;
output [0:255] kout;

wire [0:7] rw0, rw1, rw2, rw3, rw4, rw5, rw6, rw7;
wire [0:7] sbyt0, sbyt1, sbyt2, sbyt3, sbyt4, sbyt5, sbyt6, sbyt7;
wire [0:7] R0, R1, R2, R3;


//STEP 1
assign rw2 = kin[248:255];
assign rw1 = kin[240:247];
assign rw0 = kin[232:239];
assign rw3 = kin[224:231];


//STEP 2
Sub_byte sb0 (rw0, sbyt0);
Sub_byte sb1 (rw1, sbyt1);
Sub_byte sb2 (rw2, sbyt2);
Sub_byte sb3 (rw3, sbyt3);


//STEP 3
Rcon_c rc (keyid, R0, R1, R2, R3);

//STEP 4
// W0
assign kout [0:7]    = kin[0:7]^sbyt0^R0;
assign kout [8:15]   = kin[8:15]^sbyt1^R1;
assign kout [16:23]  = kin[16:23]^sbyt2^R2;
assign kout [24:31]  = kin[24:31]^sbyt3^R3;

// W1
assign kout [32:39]  = kin[32:39]^kout[0:7];
assign kout [40:47]  = kin[40:47]^kout[8:15];
assign kout [48:55]  = kin[48:55]^kout[16:23];
assign kout [56:63]  = kin[56:63]^kout[24:31];

//W2
assign kout [64:71]  = kin[64:71]^kout[32:39];
assign kout [72:79]  = kin[72:79]^kout[40:47];
assign kout [80:87]  = kin[80:87]^kout[48:55];
assign kout [88:95]  = kin[88:95]^kout[56:63];

//W3
assign kout [96:103]  = kin[96:103]^kout[64:71];
assign kout [104:111] = kin[104:111]^kout[72:79];
assign kout [112:119] = kin[112:119]^kout[80:87];
assign kout [120:127] = kin[120:127]^kout[88:95];

//Step 5
assign rw4 = kout [96:103];
assign rw5 = kout [104:111];
assign rw6 = kout [112:119];
assign rw7 = kout [120:127];


//Step 6
Sub_byte sb4 (rw4, sbyt4);
Sub_byte sb5 (rw5, sbyt5);
Sub_byte sb6 (rw6, sbyt6);
Sub_byte sb7 (rw7, sbyt7);

//Step 7
//W4
assign kout [128:135] = kin[128:135]^sbyt4;
assign kout [136:143] = kin[136:143]^sbyt5;
assign kout [144:151] = kin[144:151]^sbyt6;
assign kout [152:159] = kin[152:159]^sbyt7;

//W5
assign kout [160:167] = kin[160:167]^kout[128:135];
assign kout [168:175] = kin[168:175]^kout[136:143];
assign kout [176:183] = kin[176:183]^kout[144:151];
assign kout [184:191] = kin[184:191]^kout[152:159];

//W6
assign kout [192:199] = kin[192:199]^kout[160:167];
assign kout [200:207] = kin[200:207]^kout[168:175];
assign kout [208:215] = kin[208:215]^kout[176:183];
assign kout [216:223] = kin[216:223]^kout[184:191];

//W7
assign kout [224:231] = kin[224:231]^kout[192:199];
assign kout [232:239] = kin[232:239]^kout[200:207];
assign kout [240:247] = kin[240:247]^kout[208:215];
assign kout [248:255] = kin[248:255]^kout[216:223];

endmodule
