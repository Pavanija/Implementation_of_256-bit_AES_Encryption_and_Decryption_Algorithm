module IModb(Sin, Sout);

input [0:7] Sin;
output reg [0:7] Sout;

always@(Sin)
begin
case(Sin)
//R0 DONE
8'h00: Sout = 8'h00;   8'h01: Sout = 8'h0B;   8'h02: Sout = 8'h16;   8'h03: Sout = 8'h1D;
8'h04: Sout = 8'h2C;   8'h05: Sout = 8'h27;   8'h06: Sout = 8'h3A;   8'h07: Sout = 8'h31;
8'h08: Sout = 8'h58;   8'h09: Sout = 8'h53;   8'h0A: Sout = 8'h4E;   8'h0B: Sout = 8'h45;
8'h0C: Sout = 8'h74;   8'h0D: Sout = 8'h7F;   8'h0E: Sout = 8'h62;   8'h0F: Sout = 8'h69;

//R1 DONE
8'h10: Sout = 8'hB0;   8'h11: Sout = 8'hBB;   8'h12: Sout = 8'hA6;   8'h13: Sout = 8'hAD;
8'h14: Sout = 8'h9C;   8'h15: Sout = 8'h97;   8'h16: Sout = 8'h8A;   8'h17: Sout = 8'h81;
8'h18: Sout = 8'hE8;   8'h19: Sout = 8'hE3;   8'h1A: Sout = 8'hFE;   8'h1B: Sout = 8'hF5;
8'h1C: Sout = 8'hC4;   8'h1D: Sout = 8'hCF;   8'h1E: Sout = 8'hD2;   8'h1F: Sout = 8'hD9;

//R2 DONE
8'h20: Sout = 8'h7B;   8'h21: Sout = 8'h70;   8'h22: Sout = 8'h6D;   8'h23: Sout = 8'h66;
8'h24: Sout = 8'h57;   8'h25: Sout = 8'h5C;   8'h26: Sout = 8'h41;   8'h27: Sout = 8'h4A;
8'h28: Sout = 8'h23;   8'h29: Sout = 8'h28;   8'h2A: Sout = 8'h35;   8'h2B: Sout = 8'h3E;
8'h2C: Sout = 8'h0F;   8'h2D: Sout = 8'h04;   8'h2E: Sout = 8'h19;   8'h2F: Sout = 8'h12;

//R3 DONE
8'h30: Sout = 8'hCB;   8'h31: Sout = 8'hC0;   8'h32: Sout = 8'hDD;   8'h33: Sout = 8'hD6;
8'h34: Sout = 8'hE7;   8'h35: Sout = 8'hEC;   8'h36: Sout = 8'hF1;   8'h37: Sout = 8'hFA;
8'h38: Sout = 8'h93;   8'h39: Sout = 8'h98;   8'h3A: Sout = 8'h85;   8'h3B: Sout = 8'h8E;
8'h3C: Sout = 8'hBF;   8'h3D: Sout = 8'hB4;   8'h3E: Sout = 8'hA9;   8'h3F: Sout = 8'hA2;

//R4 DONE
8'h40: Sout = 8'hF6;   8'h41: Sout = 8'hFD;   8'h42: Sout = 8'hE0;   8'h43: Sout = 8'hEB;
8'h44: Sout = 8'hDA;   8'h45: Sout = 8'hD1;   8'h46: Sout = 8'hCC;   8'h47: Sout = 8'hC7;
8'h48: Sout = 8'hAE;   8'h49: Sout = 8'hA5;   8'h4A: Sout = 8'hB8;   8'h4B: Sout = 8'hB3;
8'h4C: Sout = 8'h82;   8'h4D: Sout = 8'h89;   8'h4E: Sout = 8'h94;   8'h4F: Sout = 8'h9F;

//R5 DONE
8'h50: Sout = 8'h46;   8'h51: Sout = 8'h4D;   8'h52: Sout = 8'h50;   8'h53: Sout = 8'h5B;
8'h54: Sout = 8'h6A;   8'h55: Sout = 8'h61;   8'h56: Sout = 8'h7C;   8'h57: Sout = 8'h77;
8'h58: Sout = 8'h1E;   8'h59: Sout = 8'h15;   8'h5A: Sout = 8'h08;   8'h5B: Sout = 8'h03;
8'h5C: Sout = 8'h32;   8'h5D: Sout = 8'h39;   8'h5E: Sout = 8'h24;   8'h5F: Sout = 8'h2F;

//R6 DONE
8'h60: Sout = 8'h8D;   8'h61: Sout = 8'h86;   8'h62: Sout = 8'h9B;   8'h63: Sout = 8'h90;
8'h64: Sout = 8'hA1;   8'h65: Sout = 8'hAA;   8'h66: Sout = 8'hB7;   8'h67: Sout = 8'hBC;
8'h68: Sout = 8'hD5;   8'h69: Sout = 8'hDE;   8'h6A: Sout = 8'hC3;   8'h6B: Sout = 8'hC8;
8'h6C: Sout = 8'hF9;   8'h6D: Sout = 8'hF2;   8'h6E: Sout = 8'hEF;   8'h6F: Sout = 8'hE4;

//R7 DONE
8'h70: Sout = 8'h3D;   8'h71: Sout = 8'h36;   8'h72: Sout = 8'h2B;   8'h73: Sout = 8'h20;
8'h74: Sout = 8'h11;   8'h75: Sout = 8'h1A;   8'h76: Sout = 8'h07;   8'h77: Sout = 8'h0C;
8'h78: Sout = 8'h65;   8'h79: Sout = 8'h6E;   8'h7A: Sout = 8'h73;   8'h7B: Sout = 8'h78;
8'h7C: Sout = 8'h49;   8'h7D: Sout = 8'h42;   8'h7E: Sout = 8'h5F;   8'h7F: Sout = 8'h54;

//R8 DONE
8'h80: Sout = 8'hF7;   8'h81: Sout = 8'hFC;   8'h82: Sout = 8'hE1;   8'h83: Sout = 8'hEA;
8'h84: Sout = 8'hDB;   8'h85: Sout = 8'hD0;   8'h86: Sout = 8'hCD;   8'h87: Sout = 8'hC6;
8'h88: Sout = 8'hAF;   8'h89: Sout = 8'hA4;   8'h8A: Sout = 8'hB9;   8'h8B: Sout = 8'hB2;
8'h8C: Sout = 8'h83;   8'h8D: Sout = 8'h88;   8'h8E: Sout = 8'h95;   8'h8F: Sout = 8'h9E;

//R9 DONE
8'h90: Sout = 8'h47;   8'h91: Sout = 8'h4C;   8'h92: Sout = 8'h51;   8'h93: Sout = 8'h5A;
8'h94: Sout = 8'h6B;   8'h95: Sout = 8'h60;   8'h96: Sout = 8'h7D;   8'h97: Sout = 8'h76;
8'h98: Sout = 8'h1F;   8'h99: Sout = 8'h14;   8'h9A: Sout = 8'h09;   8'h9B: Sout = 8'h02;
8'h9C: Sout = 8'h33;   8'h9D: Sout = 8'h38;   8'h9E: Sout = 8'h25;   8'h9F: Sout = 8'h2E;

//RA DONE
8'hA0: Sout = 8'h8C;   8'hA1: Sout = 8'h87;   8'hA2: Sout = 8'h9A;   8'hA3: Sout = 8'h91;
8'hA4: Sout = 8'hA0;   8'hA5: Sout = 8'hAB;   8'hA6: Sout = 8'hB6;   8'hA7: Sout = 8'hBD;
8'hA8: Sout = 8'hD4;   8'hA9: Sout = 8'hDF;   8'hAA: Sout = 8'hC2;   8'hAB: Sout = 8'hC9;
8'hAC: Sout = 8'hF8;   8'hAD: Sout = 8'hF3;   8'hAE: Sout = 8'hEE;   8'hAF: Sout = 8'hE5;

//RB DONE
8'hB0: Sout = 8'h3C;   8'hB1: Sout = 8'h37;   8'hB2: Sout = 8'h2A;   8'hB3: Sout = 8'h21;
8'hB4: Sout = 8'h10;   8'hB5: Sout = 8'h1B;   8'hB6: Sout = 8'h06;   8'hB7: Sout = 8'h0D;
8'hB8: Sout = 8'h64;   8'hB9: Sout = 8'h6F;   8'hBA: Sout = 8'h72;   8'hBB: Sout = 8'h79;
8'hBC: Sout = 8'h48;   8'hBD: Sout = 8'h43;   8'hBE: Sout = 8'h5E;   8'hBF: Sout = 8'h55;

//RC DONE
8'hC0: Sout = 8'h01;   8'hC1: Sout = 8'h0A;   8'hC2: Sout = 8'h17;   8'hC3: Sout = 8'h1C;
8'hC4: Sout = 8'h2D;   8'hC5: Sout = 8'h26;   8'hC6: Sout = 8'h3B;   8'hC7: Sout = 8'h30;
8'hC8: Sout = 8'h59;   8'hC9: Sout = 8'h52;   8'hCA: Sout = 8'h4F;   8'hCB: Sout = 8'h44;
8'hCC: Sout = 8'h75;   8'hCD: Sout = 8'h7E;   8'hCE: Sout = 8'h63;   8'hCF: Sout = 8'h68;

//RD DONE
8'hD0: Sout = 8'hB1;   8'hD1: Sout = 8'hBA;   8'hD2: Sout = 8'hA7;   8'hD3: Sout = 8'hAC;
8'hD4: Sout = 8'h9D;   8'hD5: Sout = 8'h96;   8'hD6: Sout = 8'h8B;   8'hD7: Sout = 8'h80;
8'hD8: Sout = 8'hE9;   8'hD9: Sout = 8'hE2;   8'hDA: Sout = 8'hFF;   8'hDB: Sout = 8'hF4;
8'hDC: Sout = 8'hC5;   8'hDD: Sout = 8'hCE;   8'hDE: Sout = 8'hD3;   8'hDF: Sout = 8'hD8;

//RE DONE
8'hE0: Sout = 8'h7A;   8'hE1: Sout = 8'h71;   8'hE2: Sout = 8'h6C;   8'hE3: Sout = 8'h67;
8'hE4: Sout = 8'h56;   8'hE5: Sout = 8'h5D;   8'hE6: Sout = 8'h40;   8'hE7: Sout = 8'h4B;
8'hE8: Sout = 8'h22;   8'hE9: Sout = 8'h29;   8'hEA: Sout = 8'h34;   8'hEB: Sout = 8'h3F;
8'hEC: Sout = 8'h0E;   8'hED: Sout = 8'h05;   8'hEE: Sout = 8'h18;   8'hEF: Sout = 8'h13;

//RF DONE
8'hF0: Sout = 8'hCA;   8'hF1: Sout = 8'hC1;   8'hF2: Sout = 8'hDC;   8'hF3: Sout = 8'hD7;
8'hF4: Sout = 8'hE6;   8'hF5: Sout = 8'hED;   8'hF6: Sout = 8'hF0;   8'hF7: Sout = 8'hFB;
8'hF8: Sout = 8'h92;   8'hF9: Sout = 8'h99;   8'hFA: Sout = 8'h84;   8'hFB: Sout = 8'h8F;
8'hFC: Sout = 8'hBE;   8'hFD: Sout = 8'hB5;   8'hFE: Sout = 8'hA8;   8'hFF: Sout = 8'hA3;
endcase
end
endmodule
