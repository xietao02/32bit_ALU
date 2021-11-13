`timescale 1ns / 1ps

module Cut_decoder (
    input [4:0] bite,
    output [31:0] judge
);
///对bite按位取反
wire [4:0] Nbite;
not (Nbite[0],bite[0]);
not (Nbite[1],bite[1]);
not (Nbite[2],bite[2]);
not (Nbite[3],bite[3]);
not (Nbite[4],bite[4]);

///对bite进行译码，输出32位信号
wire [31:0] judge;
and (judge[0],Nbite[4],Nbite[3],Nbite[2],Nbite[1],Nbite[0]);
and (judge[1],Nbite[4],Nbite[3],Nbite[2],Nbite[1],bite[0]);
and (judge[2],Nbite[4],Nbite[3],Nbite[2],bite[1],Nbite[0]);
and (judge[3],Nbite[4],Nbite[3],Nbite[2],bite[1],bite[0]);
and (judge[4],Nbite[4],Nbite[3],bite[2],Nbite[1],Nbite[0]);
and (judge[5],Nbite[4],Nbite[3],bite[2],Nbite[1],bite[0]);
and (judge[6],Nbite[4],Nbite[3],bite[2],bite[1],Nbite[0]);
and (judge[7],Nbite[4],Nbite[3],bite[2],bite[1],bite[0]);
and (judge[8],Nbite[4],bite[3],Nbite[2],Nbite[1],Nbite[0]);
and (judge[9],Nbite[4],bite[3],Nbite[2],Nbite[1],bite[0]);
and (judge[10],Nbite[4],bite[3],Nbite[2],bite[1],Nbite[0]);
and (judge[11],Nbite[4],bite[3],Nbite[2],bite[1],bite[0]);
and (judge[12],Nbite[4],bite[3],bite[2],Nbite[1],Nbite[0]);
and (judge[13],Nbite[4],bite[3],bite[2],Nbite[1],bite[0]);
and (judge[14],Nbite[4],bite[3],bite[2],bite[1],Nbite[0]);
and (judge[15],Nbite[4],bite[3],bite[2],bite[1],bite[0]);
and (judge[16],bite[4],Nbite[3],Nbite[2],Nbite[1],Nbite[0]);
and (judge[17],bite[4],Nbite[3],Nbite[2],Nbite[1],bite[0]);
and (judge[18],bite[4],Nbite[3],Nbite[2],bite[1],Nbite[0]);
and (judge[19],bite[4],Nbite[3],Nbite[2],bite[1],bite[0]);
and (judge[20],bite[4],Nbite[3],bite[2],Nbite[1],Nbite[0]);
and (judge[21],bite[4],Nbite[3],bite[2],Nbite[1],bite[0]);
and (judge[22],bite[4],Nbite[3],bite[2],bite[1],Nbite[0]);
and (judge[23],bite[4],Nbite[3],bite[2],bite[1],bite[0]);
and (judge[24],bite[4],bite[3],Nbite[2],Nbite[1],Nbite[0]);
and (judge[25],bite[4],bite[3],Nbite[2],Nbite[1],bite[0]);
and (judge[26],bite[4],bite[3],Nbite[2],bite[1],Nbite[0]);
and (judge[27],bite[4],bite[3],Nbite[2],bite[1],bite[0]);
and (judge[28],bite[4],bite[3],bite[2],Nbite[1],Nbite[0]);
and (judge[29],bite[4],bite[3],bite[2],Nbite[1],bite[0]);
and (judge[30],bite[4],bite[3],bite[2],bite[1],Nbite[0]);
and (judge[31],bite[4],bite[3],bite[2],bite[1],bite[0]); 
endmodule

module CutL (
    input dir,
    input [31:0] a,
    input [31:0] judge,
    output  [31:0] s
);
///转译一遍
wire [31:0] tmp;
or (tmp[31],dir,judge[31]);
or (tmp[30],tmp[31],judge[30]);
or (tmp[29],tmp[30],judge[29]);
or (tmp[28],tmp[29],judge[28]);
or (tmp[27],tmp[28],judge[27]);
or (tmp[26],tmp[27],judge[26]);
or (tmp[25],tmp[26],judge[25]);
or (tmp[24],tmp[25],judge[24]);
or (tmp[23],tmp[24],judge[23]);
or (tmp[22],tmp[23],judge[22]);
or (tmp[21],tmp[22],judge[21]);
or (tmp[20],tmp[21],judge[20]);
or (tmp[19],tmp[20],judge[19]);
or (tmp[18],tmp[19],judge[18]);
or (tmp[17],tmp[18],judge[17]);
or (tmp[16],tmp[17],judge[16]);
or (tmp[15],tmp[16],judge[15]);
or (tmp[14],tmp[15],judge[14]);
or (tmp[13],tmp[14],judge[13]);
or (tmp[12],tmp[13],judge[12]);
or (tmp[11],tmp[12],judge[11]);
or (tmp[10],tmp[11],judge[10]);
or (tmp[9],tmp[10],judge[9]);
or (tmp[8],tmp[9],judge[8]);
or (tmp[7],tmp[8],judge[7]);
or (tmp[6],tmp[7],judge[6]);
or (tmp[5],tmp[6],judge[5]);
or (tmp[4],tmp[5],judge[4]);
or (tmp[3],tmp[4],judge[3]);
or (tmp[2],tmp[3],judge[2]);
or (tmp[1],tmp[2],judge[1]);
or (tmp[0],tmp[1],judge[0]);   

///将转译后结果与输入相与,并将结果输出,dir=0表示左截取开始
wire in_put;
not (in_put,dir);
and (s[0],tmp[31],a[0],in_put);
and (s[1],tmp[30],a[1],in_put);
and (s[2],tmp[29],a[2],in_put);
and (s[3],tmp[28],a[3],in_put);
and (s[4],tmp[27],a[4],in_put);
and (s[5],tmp[26],a[5],in_put);
and (s[6],tmp[25],a[6],in_put);
and (s[7],tmp[24],a[7],in_put);
and (s[8],tmp[23],a[8],in_put);
and (s[9],tmp[22],a[9],in_put);
and (s[10],tmp[21],a[10],in_put);
and (s[11],tmp[20],a[11],in_put);
and (s[12],tmp[19],a[12],in_put);
and (s[13],tmp[18],a[13],in_put);
and (s[14],tmp[17],a[14],in_put);
and (s[15],tmp[16],a[15],in_put);
and (s[16],tmp[15],a[16],in_put);
and (s[17],tmp[14],a[17],in_put);
and (s[18],tmp[13],a[18],in_put);
and (s[19],tmp[12],a[19],in_put);
and (s[20],tmp[11],a[20],in_put);
and (s[21],tmp[10],a[21],in_put);
and (s[22],tmp[9],a[22],in_put);
and (s[23],tmp[8],a[23],in_put);
and (s[24],tmp[7],a[24],in_put);
and (s[25],tmp[6],a[25],in_put);
and (s[26],tmp[5],a[26],in_put);
and (s[27],tmp[4],a[27],in_put);
and (s[28],tmp[3],a[28],in_put);
and (s[29],tmp[2],a[29],in_put);
and (s[30],tmp[1],a[30],in_put);
and (s[31],tmp[0],a[31],in_put);
endmodule

module CutR (
    input dir,
    input [31:0] a,
    input [31:0] judge,
    output  [31:0] s
);
///转译一遍
wire [31:0] tmp;
wire in_put;
not (in_put,dir);
or (tmp[31],in_put,judge[31]);
or (tmp[30],tmp[31],judge[30]);
or (tmp[29],tmp[30],judge[29]);
or (tmp[28],tmp[29],judge[28]);
or (tmp[27],tmp[28],judge[27]);
or (tmp[26],tmp[27],judge[26]);
or (tmp[25],tmp[26],judge[25]);
or (tmp[24],tmp[25],judge[24]);
or (tmp[23],tmp[24],judge[23]);
or (tmp[22],tmp[23],judge[22]);
or (tmp[21],tmp[22],judge[21]);
or (tmp[20],tmp[21],judge[20]);
or (tmp[19],tmp[20],judge[19]);
or (tmp[18],tmp[19],judge[18]);
or (tmp[17],tmp[18],judge[17]);
or (tmp[16],tmp[17],judge[16]);
or (tmp[15],tmp[16],judge[15]);
or (tmp[14],tmp[15],judge[14]);
or (tmp[13],tmp[14],judge[13]);
or (tmp[12],tmp[13],judge[12]);
or (tmp[11],tmp[12],judge[11]);
or (tmp[10],tmp[11],judge[10]);
or (tmp[9],tmp[10],judge[9]);
or (tmp[8],tmp[9],judge[8]);
or (tmp[7],tmp[8],judge[7]);
or (tmp[6],tmp[7],judge[6]);
or (tmp[5],tmp[6],judge[5]);
or (tmp[4],tmp[5],judge[4]);
or (tmp[3],tmp[4],judge[3]);
or (tmp[2],tmp[3],judge[2]);
or (tmp[1],tmp[2],judge[1]);
or (tmp[0],tmp[1],judge[0]);

///将转译后结果与输入相与,并将结果输出,dir=1表示右截取开始
and (s[31],tmp[31],a[31],dir);
and (s[30],tmp[30],a[30],dir);
and (s[29],tmp[29],a[29],dir);
and (s[28],tmp[28],a[28],dir);
and (s[27],tmp[27],a[27],dir);
and (s[26],tmp[26],a[26],dir);
and (s[25],tmp[25],a[25],dir);
and (s[24],tmp[24],a[24],dir);
and (s[23],tmp[23],a[23],dir);
and (s[22],tmp[22],a[22],dir);
and (s[21],tmp[21],a[21],dir);
and (s[20],tmp[20],a[20],dir);
and (s[19],tmp[19],a[19],dir);
and (s[18],tmp[18],a[18],dir);
and (s[17],tmp[17],a[17],dir);
and (s[16],tmp[16],a[16],dir);
and (s[15],tmp[15],a[15],dir);
and (s[14],tmp[14],a[14],dir);
and (s[13],tmp[13],a[13],dir);
and (s[12],tmp[12],a[12],dir);
and (s[11],tmp[11],a[11],dir);
and (s[10],tmp[10],a[10],dir);
and (s[9],tmp[9],a[9],dir);
and (s[8],tmp[8],a[8],dir);
and (s[7],tmp[7],a[7],dir);
and (s[6],tmp[6],a[6],dir);
and (s[5],tmp[5],a[5],dir);
and (s[4],tmp[4],a[4],dir);
and (s[3],tmp[3],a[3],dir);
and (s[2],tmp[2],a[2],dir);
and (s[1],tmp[1],a[1],dir);
and (s[0],tmp[0],a[0],dir);
endmodule

module Truncate_32bit(
    input [31:0] a,
    input dir, ///0从高位(左侧)开始截取，1从低位(右侧)开始截取
    input [4:0] bite,
    output [31:0] s
);
///译码
wire [31:0] judge;
Cut_decoder cutd1(
    .bite(bite),
    .judge(judge)
);
///左(高)截取调用
wire [31:0] s1;
CutL cutl1(
    .dir(dir),
    .a(a),
    .judge(judge),
    .s(s1)
);

///右(低)截取调用
wire [31:0] s2;
CutR cutr1(
    .dir(dir),
    .a(a),
    .judge(judge),
    .s(s2)
);
///输出
or (s[0],s1[0],s2[0]);
or (s[1],s1[1],s2[1]);
or (s[2],s1[2],s2[2]);
or (s[3],s1[3],s2[3]);
or (s[4],s1[4],s2[4]);
or (s[5],s1[5],s2[5]);
or (s[6],s1[6],s2[6]);
or (s[7],s1[7],s2[7]);
or (s[8],s1[8],s2[8]);
or (s[9],s1[9],s2[9]);
or (s[10],s1[10],s2[10]);
or (s[11],s1[11],s2[11]);
or (s[12],s1[12],s2[12]);
or (s[13],s1[13],s2[13]);
or (s[14],s1[14],s2[14]);
or (s[15],s1[15],s2[15]);
or (s[16],s1[16],s2[16]);
or (s[17],s1[17],s2[17]);
or (s[18],s1[18],s2[18]);
or (s[19],s1[19],s2[19]);
or (s[20],s1[20],s2[20]);
or (s[21],s1[21],s2[21]);
or (s[22],s1[22],s2[22]);
or (s[23],s1[23],s2[23]);
or (s[24],s1[24],s2[24]);
or (s[25],s1[25],s2[25]);
or (s[26],s1[26],s2[26]);
or (s[27],s1[27],s2[27]);
or (s[28],s1[28],s2[28]);
or (s[29],s1[29],s2[29]);
or (s[30],s1[30],s2[30]);
or (s[31],s1[31],s2[31]);
endmodule