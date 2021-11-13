`timescale 1ns / 1ps

//将功能码F解码
module Decoder_3To8(
    input [2:0] a,
    output [7:0] y
    );
wire [2:0] Na;
///输入取反
not (Na[0],a[0]);
not (Na[1],a[1]);
not (Na[2],a[2]);
///输出
and (y[0],Na[2],Na[1],Na[0]);
and (y[1],Na[2],Na[1],a[0]);
and (y[2],Na[2],a[1],Na[0]);
and (y[3],Na[2],a[1],a[0]);
and (y[4],a[2],Na[1],Na[0]);
and (y[5],a[2],Na[1],a[0]);
and (y[6],a[2],a[1],Na[0]);
and (y[7],a[2],a[1],a[0]);
endmodule


//将功能码f解码
module Decoder_2To4(
    input [1:0] a,
    output [3:0] y
    );
wire [1:0] Na;
///输入取反
not (Na[0],a[0]);
not (Na[1],a[1]);
///输出
and (y[0],Na[1],Na[0]);
and (y[1],Na[1],a[0]);
and (y[2],a[1],Na[0]);
and (y[3],a[1],a[0]);
endmodule
