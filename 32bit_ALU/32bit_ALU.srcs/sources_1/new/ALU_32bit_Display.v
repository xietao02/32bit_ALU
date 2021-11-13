`timescale 1ns / 1ps

module ALU_Display (
//时钟与复位信号
input clk,
input resetn, //后缀"n"代表低电平有效

//拨码开关，用于选择输入数和产生 cin
input [2:0] input_sel, //0:输入为加数 1(In1);1:为加数 2(In2);2:表示A
input sw_cin,

//led 灯，用于显示 cout
output led_cout,

 //触摸屏相关接口，不需要更改
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

 //-----{调用ALU模块}begin
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
 //-----{调用ALU模块}end

 //---------------------{调用触摸屏模块}begin--------------------//
 //-----{实例化触摸屏}begin
 //此小节不需要更改
 reg display_valid;
 reg [39:0] display_name;
 reg [31:0] display_value;
 wire [5:0] display_number;
 wire input_valid;
 wire [31:0] input_value;

lcd_module lcd_module(
 .clk (clk ), //10Mhz
 .resetn (resetn ),

 //调用触摸屏的接口
 .display_valid (display_valid ),
 .display_name (display_name ),
 .display_value (display_value ),
 .display_number (display_number),
 .input_valid (input_valid ),
 .input_value (input_value ),

 //lcd 触摸屏相关接口，不需要更改
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
 //-----{实例化触摸屏}end

 //-----{从触摸屏获取输入}begin
 //根据实际需要输入的数修改此小节，
 //建议对每一个数的输入，编写单独一个 always 块
 //当 input_sel 为 000 时，表示输入数为加数 1，即 operand1
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

 //当 input_sel 为 001 时，表示输入数为加数 2，即 operand2
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
 //-----{从触摸屏获取输入}end

 //-----{输出到触摸屏显示}begin
 //根据需要显示的数修改此小节，
 //触摸屏上共有 44 块显示区域，可显示 44 组 32 位数据

 //44 块显示区域从 1 开始编号，编号为 1~44，
 always @(posedge clk)
 begin
 case(display_number)
 6'd1 :
 begin
   display_valid <= 1'b1;       //display_valid 是否开启该区域显示
   display_name <= "OP1";       //display_name 区域左端显示的名字
   display_value <= In1;        //display_value 区域右端的数值
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
//-----{输出到触摸屏显示}end
//----------------------{调用触摸屏模块}end---------------------//
endmodule