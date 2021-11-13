`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/05 23:52:52
// Design Name: 
// Module Name: Xor_Gate_32bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Xor_32bit(
    input [31:0] a,
    input [31:0] b,
    output [31:0] s
    );
    
xor a1 (s[0],a[0],b[0]);
xor a2 (s[1],a[1],b[1]);
xor a3 (s[2],a[2],b[2]);
xor a4 (s[3],a[3],b[3]);
xor a5 (s[4],a[4],b[4]);
xor a6 (s[5],a[5],b[5]);
xor a7 (s[6],a[6],b[6]);
xor a8 (s[7],a[7],b[7]);
xor a9 (s[8],a[8],b[8]);
xor a10 (s[9],a[9],b[9]);
xor a11 (s[10],a[10],b[10]);
xor a12 (s[11],a[11],b[11]);
xor a13 (s[12],a[12],b[12]);
xor a14 (s[13],a[13],b[13]);
xor a15 (s[14],a[14],b[14]);
xor a16 (s[15],a[15],b[15]);
xor a17 (s[16],a[16],b[16]);
xor a18 (s[17],a[17],b[17]);
xor a19 (s[18],a[18],b[18]);
xor a20 (s[19],a[19],b[19]);
xor a21 (s[20],a[20],b[20]);
xor a22 (s[21],a[21],b[21]);
xor a23 (s[22],a[22],b[22]);
xor a24 (s[23],a[23],b[23]);
xor a25 (s[24],a[24],b[24]);
xor a26 (s[25],a[25],b[25]);
xor a27 (s[26],a[26],b[26]);
xor a28 (s[27],a[27],b[27]);
xor a29 (s[28],a[28],b[28]);
xor a30 (s[29],a[29],b[29]);
xor a31 (s[30],a[30],b[30]);
xor a32 (s[31],a[31],b[31]);

endmodule
