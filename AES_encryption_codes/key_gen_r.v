module key_gen_r (K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, KA, KB, KC, KD);

input  [0:255] K0;
output [0:127] K1, K2, K3, K4, K5, K6, K7, K8, K9, KA, KB, KC, KD;

wire [0:255] K_O_12, K_O_34, K_O_56, K_O_78, K_O_9A, K_O_BC, K_O_DE;

Key_generation key_generate1 (K0    , 4'h1, K_O_12);
Key_generation key_generate2 (K_O_12, 4'h2, K_O_34);
Key_generation key_generate3 (K_O_34, 4'h3, K_O_56);
Key_generation key_generate4 (K_O_56, 4'h4, K_O_78);
Key_generation key_generate5 (K_O_78, 4'h5, K_O_9A);
Key_generation key_generate6 (K_O_9A, 4'h6, K_O_BC);
Key_generation key_generate7 (K_O_BC, 4'h7, K_O_DE);

assign K1 = K_O_12[0:127]; 
assign K2 = K_O_12[128:255];

assign K3 = K_O_34[0:127]; 
assign K4 = K_O_34[128:255];

assign K5 = K_O_56[0:127]; 
assign K6 = K_O_56[128:255];

assign K7 = K_O_78[0:127]; 
assign K8 = K_O_78[128:255];

assign K9 = K_O_9A[0:127]; 
assign KA = K_O_9A[128:255];

assign KB = K_O_BC[0:127]; 
assign KC = K_O_BC[128:255];


assign KD = K_O_DE[0:127];

endmodule
