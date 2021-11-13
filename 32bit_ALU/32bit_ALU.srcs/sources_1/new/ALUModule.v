`timescale 1ns / 1ps

module ALU_32bit(a,b,CI,F,dir,bite,S,CO);
    input [31:0] a;
    input [31:0] b; ///�ӷ�ʹ��
    input  CI;
    input [2:0] F; ///���ݲ�ͬ��ʼ���ź����жϹ���
    input [1:0] dir; ///��λ����ȷ��
    input [4:0] bite; ///��λλ��ȷ��

    output [31:0] S; ///���
    output CO;
    ////������
    wire [7:0] y; ////3���������жϹ���
    Decoder_3To8 d1(
        .a(F),
        .y(y)
    );
    //F=000ʱ���������
    wire [31:0] s_0;
    and (s_0[0],1,y[0]);
    and (s_0[1],1,y[0]);
    and (s_0[2],1,y[0]);
    and (s_0[3],1,y[0]);
    and (s_0[4],1,y[0]);
    and (s_0[5],1,y[0]);
    and (s_0[6],1,y[0]);
    and (s_0[7],1,y[0]);
    and (s_0[8],1,y[0]);
    and (s_0[9],1,y[0]);
    and (s_0[10],1,y[0]);
    and (s_0[11],1,y[0]);
    and (s_0[12],1,y[0]);
    and (s_0[13],1,y[0]);
    and (s_0[14],1,y[0]);
    and (s_0[15],1,y[0]);
    and (s_0[16],1,y[0]);
    and (s_0[17],1,y[0]);
    and (s_0[18],1,y[0]);
    and (s_0[19],1,y[0]);
    and (s_0[20],1,y[0]);
    and (s_0[21],1,y[0]);
    and (s_0[22],1,y[0]);
    and (s_0[23],1,y[0]);
    and (s_0[24],1,y[0]);
    and (s_0[25],1,y[0]);
    and (s_0[26],1,y[0]);
    and (s_0[27],1,y[0]);
    and (s_0[28],1,y[0]);
    and (s_0[29],1,y[0]);
    and (s_0[30],1,y[0]);
    and (s_0[31],1,y[0]);
    ///�ӷ�ģ��
    wire [31:0] s1;
    wire [31:0] s_1;
    CLA_Add_32bit add1(
        .A(a),
        .B(b),
        .CI_0(CI),
        .S(s1),
        .CO(CO)
    );
    and (s_1[0],y[1],s1[0]);
    and (s_1[1],y[1],s1[1]);
    and (s_1[2],y[1],s1[2]);
    and (s_1[3],y[1],s1[3]);
    and (s_1[4],y[1],s1[4]);
    and (s_1[5],y[1],s1[5]);
    and (s_1[6],y[1],s1[6]);
    and (s_1[7],y[1],s1[7]);
    and (s_1[8],y[1],s1[8]);
    and (s_1[9],y[1],s1[9]);
    and (s_1[10],y[1],s1[10]);
    and (s_1[11],y[1],s1[11]);
    and (s_1[12],y[1],s1[12]);
    and (s_1[13],y[1],s1[13]);
    and (s_1[14],y[1],s1[14]);
    and (s_1[15],y[1],s1[15]);
    and (s_1[16],y[1],s1[16]);
    and (s_1[17],y[1],s1[17]);
    and (s_1[18],y[1],s1[18]);
    and (s_1[19],y[1],s1[19]);
    and (s_1[20],y[1],s1[20]);
    and (s_1[21],y[1],s1[21]);
    and (s_1[22],y[1],s1[22]);
    and (s_1[23],y[1],s1[23]);
    and (s_1[24],y[1],s1[24]);
    and (s_1[25],y[1],s1[25]);
    and (s_1[26],y[1],s1[26]);
    and (s_1[27],y[1],s1[27]);
    and (s_1[28],y[1],s1[28]);
    and (s_1[29],y[1],s1[29]);
    and (s_1[30],y[1],s1[30]);
    and (s_1[31],y[1],s1[31]);

    ///��λģ��
    wire [31:0] s2;
    wire [31:0] s_2;
    shifter_32bit shift1(
        .In(a),
        .dir(dir),
        .bite(bite),
        .result(s2)
    );
    and (s_2[0],y[2],s2[0]);
    and (s_2[1],y[2],s2[1]);
    and (s_2[2],y[2],s2[2]);
    and (s_2[3],y[2],s2[3]);
    and (s_2[4],y[2],s2[4]);
    and (s_2[5],y[2],s2[5]);
    and (s_2[6],y[2],s2[6]);
    and (s_2[7],y[2],s2[7]);
    and (s_2[8],y[2],s2[8]);
    and (s_2[9],y[2],s2[9]);
    and (s_2[10],y[2],s2[10]);
    and (s_2[11],y[2],s2[11]);
    and (s_2[12],y[2],s2[12]);
    and (s_2[13],y[2],s2[13]);
    and (s_2[14],y[2],s2[14]);
    and (s_2[15],y[2],s2[15]);
    and (s_2[16],y[2],s2[16]);
    and (s_2[17],y[2],s2[17]);
    and (s_2[18],y[2],s2[18]);
    and (s_2[19],y[2],s2[19]);
    and (s_2[20],y[2],s2[20]);
    and (s_2[21],y[2],s2[21]);
    and (s_2[22],y[2],s2[22]);
    and (s_2[23],y[2],s2[23]);
    and (s_2[24],y[2],s2[24]);
    and (s_2[25],y[2],s2[25]);
    and (s_2[26],y[2],s2[26]);
    and (s_2[27],y[2],s2[27]);
    and (s_2[28],y[2],s2[28]);
    and (s_2[29],y[2],s2[29]);
    and (s_2[30],y[2],s2[30]);
    and (s_2[31],y[2],s2[31]);

    ///��ȡģ��
    wire [31:0] s3;
    wire [31:0]  s_3;
    Truncate_32bit cut1(
        .a(a),
        .dir(dir[1]),
        .bite(bite),
        .s(s3)
    );
    and (s_3[0],y[3],s3[0]);
    and (s_3[1],y[3],s3[1]);
    and (s_3[2],y[3],s3[2]);
    and (s_3[3],y[3],s3[3]);
    and (s_3[4],y[3],s3[4]);
    and (s_3[5],y[3],s3[5]);
    and (s_3[6],y[3],s3[6]);
    and (s_3[7],y[3],s3[7]);
    and (s_3[8],y[3],s3[8]);
    and (s_3[9],y[3],s3[9]);
    and (s_3[10],y[3],s3[10]);
    and (s_3[11],y[3],s3[11]);
    and (s_3[12],y[3],s3[12]);
    and (s_3[13],y[3],s3[13]);
    and (s_3[14],y[3],s3[14]);
    and (s_3[15],y[3],s3[15]);
    and (s_3[16],y[3],s3[16]);
    and (s_3[17],y[3],s3[17]);
    and (s_3[18],y[3],s3[18]);
    and (s_3[19],y[3],s3[19]);
    and (s_3[20],y[3],s3[20]);
    and (s_3[21],y[3],s3[21]);
    and (s_3[22],y[3],s3[22]);
    and (s_3[23],y[3],s3[23]);
    and (s_3[24],y[3],s3[24]);
    and (s_3[25],y[3],s3[25]);
    and (s_3[26],y[3],s3[26]);
    and (s_3[27],y[3],s3[27]);
    and (s_3[28],y[3],s3[28]);
    and (s_3[29],y[3],s3[29]);
    and (s_3[30],y[3],s3[30]);
    and (s_3[31],y[3],s3[31]);

    ///��ģ��
    wire [31:0] s4;
    wire [31:0] s_4;
    And_32bit and1(
        .a(a),
        .b(b),
        .s(s4)
    );
    and (s_4[0],y[4],s4[0]);
    and (s_4[1],y[4],s4[1]);
    and (s_4[2],y[4],s4[2]);
    and (s_4[3],y[4],s4[3]);
    and (s_4[4],y[4],s4[4]);
    and (s_4[5],y[4],s4[5]);
    and (s_4[6],y[4],s4[6]);
    and (s_4[7],y[4],s4[7]);
    and (s_4[8],y[4],s4[8]);
    and (s_4[9],y[4],s4[9]);
    and (s_4[10],y[4],s4[10]);
    and (s_4[11],y[4],s4[11]);
    and (s_4[12],y[4],s4[12]);
    and (s_4[13],y[4],s4[13]);
    and (s_4[14],y[4],s4[14]);
    and (s_4[15],y[4],s4[15]);
    and (s_4[16],y[4],s4[16]);
    and (s_4[17],y[4],s4[17]);
    and (s_4[18],y[4],s4[18]);
    and (s_4[19],y[4],s4[19]);
    and (s_4[20],y[4],s4[20]);
    and (s_4[21],y[4],s4[21]);
    and (s_4[22],y[4],s4[22]);
    and (s_4[23],y[4],s4[23]);
    and (s_4[24],y[4],s4[24]);
    and (s_4[25],y[4],s4[25]);
    and (s_4[26],y[4],s4[26]);
    and (s_4[27],y[4],s4[27]);
    and (s_4[28],y[4],s4[28]);
    and (s_4[29],y[4],s4[29]);
    and (s_4[30],y[4],s4[30]);
    and (s_4[31],y[4],s4[31]);
    ///��ģ��
    wire [31:0] s5;
    wire [31:0] s_5;
    Or_32bit or1(
        .a(a),
        .b(b),
        .s(s5)
    );
    and (s_5[0],y[5],s5[0]);
    and (s_5[1],y[5],s5[1]);
    and (s_5[2],y[5],s5[2]);
    and (s_5[3],y[5],s5[3]);
    and (s_5[4],y[5],s5[4]);
    and (s_5[5],y[5],s5[5]);
    and (s_5[6],y[5],s5[6]);
    and (s_5[7],y[5],s5[7]);
    and (s_5[8],y[5],s5[8]);
    and (s_5[9],y[5],s5[9]);
    and (s_5[10],y[5],s5[10]);
    and (s_5[11],y[5],s5[11]);
    and (s_5[12],y[5],s5[12]);
    and (s_5[13],y[5],s5[13]);
    and (s_5[14],y[5],s5[14]);
    and (s_5[15],y[5],s5[15]);
    and (s_5[16],y[5],s5[16]);
    and (s_5[17],y[5],s5[17]);
    and (s_5[18],y[5],s5[18]);
    and (s_5[19],y[5],s5[19]);
    and (s_5[20],y[5],s5[20]);
    and (s_5[21],y[5],s5[21]);
    and (s_5[22],y[5],s5[22]);
    and (s_5[23],y[5],s5[23]);
    and (s_5[24],y[5],s5[24]);
    and (s_5[25],y[5],s5[25]);
    and (s_5[26],y[5],s5[26]);
    and (s_5[27],y[5],s5[27]);
    and (s_5[28],y[5],s5[28]);
    and (s_5[29],y[5],s5[29]);
    and (s_5[30],y[5],s5[30]);
    and (s_5[31],y[5],s5[31]);

    ///��ģ��
    wire [31:0] s6;
    wire [31:0] s_6;
    Not_32bit not1(
        .a(a),
        .s(s6)
    );
    and (s_6[0],y[6],s6[0]);
    and (s_6[1],y[6],s6[1]);
    and (s_6[2],y[6],s6[2]);
    and (s_6[3],y[6],s6[3]);
    and (s_6[4],y[6],s6[4]);
    and (s_6[5],y[6],s6[5]);
    and (s_6[6],y[6],s6[6]);
    and (s_6[7],y[6],s6[7]);
    and (s_6[8],y[6],s6[8]);
    and (s_6[9],y[6],s6[9]);
    and (s_6[10],y[6],s6[10]);
    and (s_6[11],y[6],s6[11]);
    and (s_6[12],y[6],s6[12]);
    and (s_6[13],y[6],s6[13]);
    and (s_6[14],y[6],s6[14]);
    and (s_6[15],y[6],s6[15]);
    and (s_6[16],y[6],s6[16]);
    and (s_6[17],y[6],s6[17]);
    and (s_6[18],y[6],s6[18]);
    and (s_6[19],y[6],s6[19]);
    and (s_6[20],y[6],s6[20]);
    and (s_6[21],y[6],s6[21]);
    and (s_6[22],y[6],s6[22]);
    and (s_6[23],y[6],s6[23]);
    and (s_6[24],y[6],s6[24]);
    and (s_6[25],y[6],s6[25]);
    and (s_6[26],y[6],s6[26]);
    and (s_6[27],y[6],s6[27]);
    and (s_6[28],y[6],s6[28]);
    and (s_6[29],y[6],s6[29]);
    and (s_6[30],y[6],s6[30]);
    and (s_6[31],y[6],s6[31]);

    ///���ģ��
    wire [31:0] s7;
    wire [31:0] s_7;
    Xor_32bit xor1(
        .a(a),
        .b(b),
        .s(s7)
    );
    and (s_7[0],y[7],s7[0]);
    and (s_7[1],y[7],s7[1]);
    and (s_7[2],y[7],s7[2]);
    and (s_7[3],y[7],s7[3]);
    and (s_7[4],y[7],s7[4]);
    and (s_7[5],y[7],s7[5]);
    and (s_7[6],y[7],s7[6]);
    and (s_7[7],y[7],s7[7]);
    and (s_7[8],y[7],s7[8]);
    and (s_7[9],y[7],s7[9]);
    and (s_7[10],y[7],s7[10]);
    and (s_7[11],y[7],s7[11]);
    and (s_7[12],y[7],s7[12]);
    and (s_7[13],y[7],s7[13]);
    and (s_7[14],y[7],s7[14]);
    and (s_7[15],y[7],s7[15]);
    and (s_7[16],y[7],s7[16]);
    and (s_7[17],y[7],s7[17]);
    and (s_7[18],y[7],s7[18]);
    and (s_7[19],y[7],s7[19]);
    and (s_7[20],y[7],s7[20]);
    and (s_7[21],y[7],s7[21]);
    and (s_7[22],y[7],s7[22]);
    and (s_7[23],y[7],s7[23]);
    and (s_7[24],y[7],s7[24]);
    and (s_7[25],y[7],s7[25]);
    and (s_7[26],y[7],s7[26]);
    and (s_7[27],y[7],s7[27]);
    and (s_7[28],y[7],s7[28]);
    and (s_7[29],y[7],s7[29]);
    and (s_7[30],y[7],s7[30]);
    and (s_7[31],y[7],s7[31]);

    ///���
    or (S[0],s_0[0],s_1[0],s_2[0],s_3[0],s_4[0],s_5[0],s_6[0],s_7[0]);
    or (S[1],s_0[1],s_1[1],s_2[1],s_3[1],s_4[1],s_5[1],s_6[1],s_7[1]);
    or (S[2],s_0[2],s_1[2],s_2[2],s_3[2],s_4[2],s_5[2],s_6[2],s_7[2]);
    or (S[3],s_0[3],s_1[3],s_2[3],s_3[3],s_4[3],s_5[3],s_6[3],s_7[3]);
    or (S[4],s_0[4],s_1[4],s_2[4],s_3[4],s_4[4],s_5[4],s_6[4],s_7[4]);
    or (S[5],s_0[5],s_1[5],s_2[5],s_3[5],s_4[5],s_5[5],s_6[5],s_7[5]);
    or (S[6],s_0[6],s_1[6],s_2[6],s_3[6],s_4[6],s_5[6],s_6[6],s_7[6]);
    or (S[7],s_0[7],s_1[7],s_2[7],s_3[7],s_4[7],s_5[7],s_6[7],s_7[7]);
    or (S[8],s_0[8],s_1[8],s_2[8],s_3[8],s_4[8],s_5[8],s_6[8],s_7[8]);
    or (S[9],s_0[9],s_1[9],s_2[9],s_3[9],s_4[9],s_5[9],s_6[9],s_7[9]);
    or (S[10],s_0[10],s_1[10],s_2[10],s_3[10],s_4[10],s_5[10],s_6[10],s_7[10]);
    or (S[11],s_0[11],s_1[11],s_2[11],s_3[11],s_4[11],s_5[11],s_6[11],s_7[11]);
    or (S[12],s_0[12],s_1[12],s_2[12],s_3[12],s_4[12],s_5[12],s_6[12],s_7[12]);
    or (S[13],s_0[13],s_1[13],s_2[13],s_3[13],s_4[13],s_5[13],s_6[13],s_7[13]);
    or (S[14],s_0[14],s_1[14],s_2[14],s_3[14],s_4[14],s_5[14],s_6[14],s_7[14]);
    or (S[15],s_0[15],s_1[15],s_2[15],s_3[15],s_4[15],s_5[15],s_6[15],s_7[15]);
    or (S[16],s_0[16],s_1[16],s_2[16],s_3[16],s_4[16],s_5[16],s_6[16],s_7[16]);
    or (S[17],s_0[17],s_1[17],s_2[17],s_3[17],s_4[17],s_5[17],s_6[17],s_7[17]);
    or (S[18],s_0[18],s_1[18],s_2[18],s_3[18],s_4[18],s_5[18],s_6[18],s_7[18]);
    or (S[19],s_0[19],s_1[19],s_2[19],s_3[19],s_4[19],s_5[19],s_6[19],s_7[19]);
    or (S[20],s_0[20],s_1[20],s_2[20],s_3[20],s_4[20],s_5[20],s_6[20],s_7[20]);
    or (S[21],s_0[21],s_1[21],s_2[21],s_3[21],s_4[21],s_5[21],s_6[21],s_7[21]);
    or (S[22],s_0[22],s_1[22],s_2[22],s_3[22],s_4[22],s_5[22],s_6[22],s_7[22]);
    or (S[23],s_0[23],s_1[23],s_2[23],s_3[23],s_4[23],s_5[23],s_6[23],s_7[23]);
    or (S[24],s_0[24],s_1[24],s_2[24],s_3[24],s_4[24],s_5[24],s_6[24],s_7[24]);
    or (S[25],s_0[25],s_1[25],s_2[25],s_3[25],s_4[25],s_5[25],s_6[25],s_7[25]);
    or (S[26],s_0[26],s_1[26],s_2[26],s_3[26],s_4[26],s_5[26],s_6[26],s_7[26]);
    or (S[27],s_0[27],s_1[27],s_2[27],s_3[27],s_4[27],s_5[27],s_6[27],s_7[27]);
    or (S[28],s_0[28],s_1[28],s_2[28],s_3[28],s_4[28],s_5[28],s_6[28],s_7[28]);
    or (S[29],s_0[29],s_1[29],s_2[29],s_3[29],s_4[29],s_5[29],s_6[29],s_7[29]);
    or (S[30],s_0[30],s_1[30],s_2[30],s_3[30],s_4[30],s_5[30],s_6[30],s_7[30]);
    or (S[31],s_0[31],s_1[31],s_2[31],s_3[31],s_4[31],s_5[31],s_6[31],s_7[31]);

endmodule