`timescale 1ns / 1ps

module ALU_Display (
//ʱ���븴λ�ź�
input clk,
input resetn, //��׺"n"����͵�ƽ��Ч

//���뿪�أ�����ѡ���������Ͳ��� cin
input [2:0] input_sel, //0:����Ϊ���� 1(In1);1:Ϊ���� 2(In2);2:��ʾA
input sw_cin,

//led �ƣ�������ʾ cout
output led_cout,

 //��������ؽӿڣ�����Ҫ����
output lcd_rst,
output lcd_cs,
output lcd_rs,
output lcd_wr,
output lcd_rd,
inout[15:0] lcd_data_io,
output lcd_bl_ctr,
inout ct_int,
inout ct_sda,
output ct_scl,
output ct_rstn
);

 //-----{����ALUģ��}begin
 reg [31:0] In1;
 reg [31:0] In2;
 wire          CI;
 reg [2:0]  F;
 reg [1:0] Dir;
 reg [4:0] Bite;

 wire [31:0]   Out;
 wire          CO;
ALU_32bit alu_32(
    .a        (In1),
    .b        (In2),
    .CI         (CI),
    .F          (F),
    .dir        (Dir),
    .bite       (Bite),
    .S          (Out),
    .CO         (CO)
 );
 assign CI = sw_cin;
 assign led_cout = Out;
 //-----{����ALUģ��}end

 //---------------------{���ô�����ģ��}begin--------------------//
 //-----{ʵ����������}begin
 //��С�ڲ���Ҫ����
 reg display_valid;
 reg [39:0] display_name;
 reg [31:0] display_value;
 wire [5:0] display_number;
 wire input_valid;
 wire [31:0] input_value;

lcd_module lcd_module(
 .clk (clk ), //10Mhz
 .resetn (resetn ),

 //���ô������Ľӿ�
 .display_valid (display_valid ),
 .display_name (display_name ),
 .display_value (display_value ),
 .display_number (display_number),
 .input_valid (input_valid ),
 .input_value (input_value ),

 //lcd ��������ؽӿڣ�����Ҫ����
 .lcd_rst (lcd_rst ),
 .lcd_cs (lcd_cs ),
 .lcd_rs (lcd_rs ),
 .lcd_wr (lcd_wr ),
 .lcd_rd (lcd_rd ),
 .lcd_data_io (lcd_data_io ),
 .lcd_bl_ctr (lcd_bl_ctr ),
 .ct_int (ct_int ),
 .ct_sda (ct_sda ),
 .ct_scl (ct_scl ),
 .ct_rstn (ct_rstn )
);
 //-----{ʵ����������}end

 //-----{�Ӵ�������ȡ����}begin
 //����ʵ����Ҫ��������޸Ĵ�С�ڣ�
 //�����ÿһ���������룬��д����һ�� always ��
 //�� input_sel Ϊ 000 ʱ����ʾ������Ϊ���� 1���� operand1
 always @(posedge clk)
 begin
 if (!resetn)
 begin
   In1 <= 32'd0;
 end
 else if (input_valid && input_sel==3'b000 )
 begin
   In1 <= input_value;
 end
 end

 //�� input_sel Ϊ 001 ʱ����ʾ������Ϊ���� 2���� operand2
always @(posedge clk)
 begin
 if (!resetn)
 begin
   In2 <= 32'd0;
 end
 else if (input_valid && input_sel==3'b001 )
 begin
   In2 <= input_value;
 end
 end
//F
always @(posedge clk)
 begin
 if (!resetn)
 begin
   F <= 3'd0;
 end
 else if (input_valid && input_sel==3'b010 )
 begin
   F <= input_value;
 end
 end

//dir
 always @(posedge clk)
 begin
 if (!resetn)
 begin
   Dir <= 2'd0;
 end
 else if (input_valid && input_sel==3'b011 )
 begin
   Dir <= input_value;
 end
 end

 //bite
 always @(posedge clk)
 begin
 if (!resetn)
 begin
   Bite <= 5'd0;
 end
 else if (input_valid && input_sel==3'b100 )
 begin
   Bite <= input_value;
 end
 end
 //-----{�Ӵ�������ȡ����}end

 //-----{�������������ʾ}begin
 //������Ҫ��ʾ�����޸Ĵ�С�ڣ�
 //�������Ϲ��� 44 ����ʾ���򣬿���ʾ 44 �� 32 λ����

 //44 ����ʾ����� 1 ��ʼ��ţ����Ϊ 1~44��
 always @(posedge clk)
 begin
 case(display_number)
 6'd1 :
 begin
   display_valid <= 1'b1;       //display_valid �Ƿ�����������ʾ
   display_name <= "OP1";       //display_name ���������ʾ������
   display_value <= In1;        //display_value �����Ҷ˵���ֵ
 end
 6'd2 :
 begin
   display_valid <= 1'b1;
   display_name <= "OP2";
   display_value <= In2;
 end
 6'd3 :
 begin
   display_valid <= 1'b1;
   display_name <= "CI";
   display_value <= CI;
 end
 6'd4 :
 begin
   display_valid <= 1'b1;
   display_name <= "F";
   display_value <= F;
 end
6'd5 :
 begin
   display_valid <= 1'b1;
   display_name <= "DIR";
   display_value <= Dir;
 end
 6'd6 :
 begin
   display_valid <= 1'b1;
   display_name <= "BITE";
   display_value <= Bite;
 end
 6'd7 :
 begin
   display_valid <= 1'b1;
   display_name <= "OUT";
   display_value <= Out;
 end
 6'd8 :
 begin
   display_valid <= 1'b1;
   display_name <= "CO";
   display_value <= CO;
 end
 default :
 begin
   display_valid <= 1'b0;
   display_name <= 40'd0;
   display_value <= 32'd0;
end
endcase
end
//-----{�������������ʾ}end
//----------------------{���ô�����ģ��}end---------------------//
endmodule