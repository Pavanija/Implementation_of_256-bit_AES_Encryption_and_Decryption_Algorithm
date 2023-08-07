module Main_rounds (C_Msg_in, R_key, C_Msg_out);

input  [0:127] C_Msg_in;
input  [0:127] R_key;
output [0:127] C_Msg_out;

wire [0:127] C_Msg_1, C_Msg_2, C_Msg_3;

Sub_byter      r_A (C_Msg_in, C_Msg_1);
Shift_rowr     r_B (C_Msg_1, C_Msg_2);
Mix_columnr    r_C (C_Msg_2, C_Msg_3);
Add_round_keyr r_S (C_Msg_3, R_key, C_Msg_out);

endmodule
