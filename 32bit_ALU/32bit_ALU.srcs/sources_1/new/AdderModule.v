`timescale 1ns / 1ps

module Add_1bit(
    input A,
    input B,
    input CI,
    output S,
    output G,
    output P
);

xor(S,A,B,CI);
and(G,A,B);
or(P,A,B);
    
endmodule

module CLA_4bit(
    input[3:0] P,
    input[3:0] G,
    input CI_0,
    output[4:1] CI,
    output Gm,
    output Pm
);

wire temp[9:0];
and(temp[0],CI_0,P[0]);
and(temp[1],temp[0],P[1]);
and(temp[2],temp[1],P[2]);
and(temp[3],temp[2],P[3]);

and(temp[4],G[0],P[1]);
and(temp[5],temp[4],P[2]);
and(temp[6],temp[5],P[3]);

and(temp[7],G[1],P[2]);
and(temp[8],temp[7],P[3]);

and(temp[9],G[2],P[3]);

or(CI[1],G[0],temp[0]);
or(CI[2],G[1],temp[4],temp[1]);
or(CI[3],G[2],temp[7],temp[5],temp[2]);
or(CI[4],G[3],temp[9],temp[8],temp[6],temp[3]);
  
or(Gm,G[3],temp[9],temp[8],temp[6]);
and(Pm,P[0],P[1],P[2],P[3]);
    
endmodule

module CLA_Add_4bit(
    input[3:0] A,
    input[3:0] B,
    input CI_0,
    output[3:0] S,
    output Gm,
    output Pm
);

wire[3:0] G;
wire[3:0] P;
wire[4:1] CI;
    
Add_1bit u1(
    .A (A[0]),
    .B (B[0]),
    .CI (CI_0),
    .S (S[0]),
    .G (G[0]),
    .P (P[0])
);
    
Add_1bit u2(
    .A (A[1]),
    .B (B[1]),
    .CI (CI[1]),
    .S (S[1]),
    .G (G[1]),
    .P (P[1])
);
    
Add_1bit u3(
    .A (A[2]),
    .B (B[2]),
    .CI (CI[2]),
    .S (S[2]),
    .G (G[2]),
    .P (P[2])
);
    
Add_1bit u4(
    .A (A[3]),
    .B (B[3]),
    .CI (CI[3]),
    .S (S[3]),
    .G (G[3]),
    .P (P[3])
);

CLA_4bit U(
    .P (P),
    .G (G),
    .CI_0 (CI_0),
    .CI (CI),
    .Gm (Gm),
    .Pm (Pm)
);
    
endmodule

module CLA_Add_16bit(
    input[15:0] A,
    input[15:0] B,
    input CI_0,
    output[15:0] S,
    output GM,
    output PM
);

wire[3:0] G;
wire[3:0] P;
wire[4:1] CI;

CLA_Add_4bit u1(
    .A (A[3:0]),
    .B (B[3:0]),
    .CI_0 (CI_0),
    .S (S[3:0]),
    .Gm (G[0]),
    .Pm (P[0])
);
    
CLA_Add_4bit u2(
    .A (A[7:4]),
    .B (B[7:4]),
    .CI_0 (CI[1]),
    .S (S[7:4]),
    .Gm (G[1]),
    .Pm (P[1])
);
    
CLA_Add_4bit u3(
    .A (A[11:8]),
    .B (B[11:8]),
    .CI_0 (CI[2]),
    .S (S[11:8]),
    .Gm (G[2]),
    .Pm (P[2])
);
    
CLA_Add_4bit u4(
    .A (A[15:12]),
    .B (B[15:12]),
    .CI_0 (CI[3]),
    .S (S[15:12]),
    .Gm (G[3]),
    .Pm (P[3])
);

CLA_4bit U(
    .P (P),
    .G (G),
    .CI_0 (CI_0),
    .CI (CI),
    .Gm (GM),
    .Pm (PM)
);
    
endmodule

module CLA_Add_32bit(
    input[31:0] A,
    input[31:0] B,
    input CI_0,
    output[31:0] S,
    output CO
);

wire CI_16;
wire[1:0] G;
wire[1:0] P;

CLA_Add_16bit u1(
    .A (A[15:0]),
    .B (B[15:0]),
    .CI_0 (CI_0),
    .S (S[15:0]),
    .GM (G[0]),
    .PM (P[0])
);

CLA_Add_16bit u2(
    .A (A[31:16]),
    .B (B[31:16]),
    .CI_0 (CI_16),
    .S (S[31:16]),
    .GM (G[1]),
    .PM (P[1])
);

wire temp[2:0];
and(temp[0],CI_0,P[0]);
and(temp[1],temp[0],P[1]);
and(temp[2],G[0],P[1]);
or(CI_16,G[0],temp[0]);
or(CO,G[1],temp[2],temp[1]);

endmodule

