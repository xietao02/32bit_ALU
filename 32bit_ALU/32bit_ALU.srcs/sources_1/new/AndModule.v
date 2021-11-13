`timescale 1ns / 1ps

module And_32bit(
    input [31:0] a,
    input [31:0] b,
    output [31:0] s
    );
    
and a1 (s[0],a[0],b[0]);
and a2 (s[1],a[1],b[1]);
and a3 (s[2],a[2],b[2]);
and a4 (s[3],a[3],b[3]);
and a5 (s[4],a[4],b[4]);
and a6 (s[5],a[5],b[5]);
and a7 (s[6],a[6],b[6]);
and a8 (s[7],a[7],b[7]);
and a9 (s[8],a[8],b[8]);
and a10 (s[9],a[9],b[9]);
and a11 (s[10],a[10],b[10]);
and a12 (s[11],a[11],b[11]);
and a13 (s[12],a[12],b[12]);
and a14 (s[13],a[13],b[13]);
and a15 (s[14],a[14],b[14]);
and a16 (s[15],a[15],b[15]);
and a17 (s[16],a[16],b[16]);
and a18 (s[17],a[17],b[17]);
and a19 (s[18],a[18],b[18]);
and a20 (s[19],a[19],b[19]);
and a21 (s[20],a[20],b[20]);
and a22 (s[21],a[21],b[21]);
and a23 (s[22],a[22],b[22]);
and a24 (s[23],a[23],b[23]);
and a25 (s[24],a[24],b[24]);
and a26 (s[25],a[25],b[25]);
and a27 (s[26],a[26],b[26]);
and a28 (s[27],a[27],b[27]);
and a29 (s[28],a[28],b[28]);
and a30 (s[29],a[29],b[29]);
and a31 (s[30],a[30],b[30]);
and a32 (s[31],a[31],b[31]);

endmodule
