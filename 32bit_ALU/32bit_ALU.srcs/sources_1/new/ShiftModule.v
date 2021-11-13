`timescale 1ns / 1ps

module shifter_1bit (
    input[31:0] In,
    input[1:0] dir,
    input enable,
    output[31:0] result
);
    wire Nenable;
    not(Nenable,enable);
	wire[31:0] result00; //²¹0×óÒÆ
	wire[31:0] result01; //Ñ­»·×óÒÆ
	wire[31:0] result10; //²¹0ÓÒÒÆ
	wire[31:0] result11; //Ñ­»·ÓÒÒÆ
	wire[31:0] result000;   //ÊÇ·ñÒÆÎ»
	
	//¹¦ÄÜ±àÂë
	wire[3:0] f;
	wire zero;
	xor(zero,dir,dir);
	Decoder_2To4 d(.a(dir), .y(f));
	
	//²¹0×óÒÆ
	and(result00[31],In[30],f[0],enable);
	and(result00[30],In[29],f[0],enable);
	and(result00[29],In[28],f[0],enable);
	and(result00[28],In[27],f[0],enable);
	and(result00[27],In[26],f[0],enable);
	and(result00[26],In[25],f[0],enable);
	and(result00[25],In[24],f[0],enable);
	and(result00[24],In[23],f[0],enable);
	and(result00[23],In[22],f[0],enable);
	and(result00[22],In[21],f[0],enable);
	and(result00[21],In[20],f[0],enable);
	and(result00[20],In[19],f[0],enable);
	and(result00[19],In[18],f[0],enable);
	and(result00[18],In[17],f[0],enable);
	and(result00[17],In[16],f[0],enable);
	and(result00[16],In[15],f[0],enable);
	and(result00[15],In[14],f[0],enable);
	and(result00[14],In[13],f[0],enable);
	and(result00[13],In[12],f[0],enable);
	and(result00[12],In[11],f[0],enable);
	and(result00[11],In[10],f[0],enable);
	and(result00[10],In[9],f[0],enable);
	and(result00[9],In[8],f[0],enable);
	and(result00[8],In[7],f[0],enable);
	and(result00[7],In[6],f[0],enable);
	and(result00[6],In[5],f[0],enable);
	and(result00[5],In[4],f[0],enable);
	and(result00[4],In[3],f[0],enable);
	and(result00[3],In[2],f[0],enable);
	and(result00[2],In[1],f[0],enable);
	and(result00[1],In[0],f[0],enable);
	and(result00[0],zero,f[0],enable);
	
	//Ñ­»·×óÒÆ
	and(result01[31],In[30],f[1],enable);
	and(result01[30],In[29],f[1],enable);
	and(result01[29],In[28],f[1],enable);
	and(result01[28],In[27],f[1],enable);
	and(result01[27],In[26],f[1],enable);
	and(result01[26],In[25],f[1],enable);
	and(result01[25],In[24],f[1],enable);
	and(result01[24],In[23],f[1],enable);
	and(result01[23],In[22],f[1],enable);
	and(result01[22],In[21],f[1],enable);
	and(result01[21],In[20],f[1],enable);
	and(result01[20],In[19],f[1],enable);
	and(result01[19],In[18],f[1],enable);
	and(result01[18],In[17],f[1],enable);
	and(result01[17],In[16],f[1],enable);
	and(result01[16],In[15],f[1],enable);
	and(result01[15],In[14],f[1],enable);
	and(result01[14],In[13],f[1],enable);
	and(result01[13],In[12],f[1],enable);
	and(result01[12],In[11],f[1],enable);
	and(result01[11],In[10],f[1],enable);
	and(result01[10],In[9],f[1],enable);
	and(result01[9],In[8],f[1],enable);
	and(result01[8],In[7],f[1],enable);
	and(result01[7],In[6],f[1],enable);
	and(result01[6],In[5],f[1],enable);
	and(result01[5],In[4],f[1],enable);
	and(result01[4],In[3],f[1],enable);
	and(result01[3],In[2],f[1],enable);
	and(result01[2],In[1],f[1],enable);
	and(result01[1],In[0],f[1],enable);
	and(result01[0],In[31],f[1],enable);
	
	//²¹0ÓÒÒÆ
	and(result10[31],zero,f[2],enable);
	and(result10[30],In[31],f[2],enable);
	and(result10[29],In[30],f[2],enable);
	and(result10[28],In[29],f[2],enable);
	and(result10[27],In[28],f[2],enable);
	and(result10[26],In[27],f[2],enable);
	and(result10[25],In[26],f[2],enable);
	and(result10[24],In[25],f[2],enable);
	and(result10[23],In[24],f[2],enable);
	and(result10[22],In[23],f[2],enable);
	and(result10[21],In[22],f[2],enable);
	and(result10[20],In[21],f[2],enable);
	and(result10[19],In[20],f[2],enable);
	and(result10[18],In[19],f[2],enable);
	and(result10[17],In[18],f[2],enable);
	and(result10[16],In[17],f[2],enable);
	and(result10[15],In[16],f[2],enable);
	and(result10[14],In[15],f[2],enable);
	and(result10[13],In[14],f[2],enable);
	and(result10[12],In[13],f[2],enable);
	and(result10[11],In[12],f[2],enable);
	and(result10[10],In[11],f[2],enable);
	and(result10[9],In[10],f[2],enable);
	and(result10[8],In[9],f[2],enable);
	and(result10[7],In[8],f[2],enable);
	and(result10[6],In[7],f[2],enable);
	and(result10[5],In[6],f[2],enable);
	and(result10[4],In[5],f[2],enable);
	and(result10[3],In[4],f[2],enable);
	and(result10[2],In[3],f[2],enable);
	and(result10[1],In[2],f[2],enable);
	and(result10[0],In[1],f[2],enable);
	
	//Ñ­»·ÓÒÒÆ
	and(result11[31],In[0],f[3],enable);
	and(result11[30],In[31],f[3],enable);
	and(result11[29],In[30],f[3],enable);
	and(result11[28],In[29],f[3],enable);
	and(result11[27],In[28],f[3],enable);
	and(result11[26],In[27],f[3],enable);
	and(result11[25],In[26],f[3],enable);
	and(result11[24],In[25],f[3],enable);
	and(result11[23],In[24],f[3],enable);
	and(result11[22],In[23],f[3],enable);
	and(result11[21],In[22],f[3],enable);
	and(result11[20],In[21],f[3],enable);
	and(result11[19],In[20],f[3],enable);
	and(result11[18],In[19],f[3],enable);
	and(result11[17],In[18],f[3],enable);
	and(result11[16],In[17],f[3],enable);
	and(result11[15],In[16],f[3],enable);
	and(result11[14],In[15],f[3],enable);
	and(result11[13],In[14],f[3],enable);
	and(result11[12],In[13],f[3],enable);
	and(result11[11],In[12],f[3],enable);
	and(result11[10],In[11],f[3],enable);
	and(result11[9],In[10],f[3],enable);
	and(result11[8],In[9],f[3],enable);
	and(result11[7],In[8],f[3],enable);
	and(result11[6],In[7],f[3],enable);
	and(result11[5],In[6],f[3],enable);
	and(result11[4],In[5],f[3],enable);
	and(result11[3],In[4],f[3],enable);
	and(result11[2],In[3],f[3],enable);
	and(result11[1],In[2],f[3],enable);
	and(result11[0],In[1],f[3],enable);
	
	//ÊÇ·ñÒÆÎ»
	and(result000[31],In[31],Nenable);
	and(result000[30],In[30],Nenable);
	and(result000[29],In[29],Nenable);
	and(result000[28],In[28],Nenable);
	and(result000[27],In[27],Nenable);
	and(result000[26],In[26],Nenable);
	and(result000[25],In[25],Nenable);
	and(result000[24],In[24],Nenable);
	and(result000[23],In[23],Nenable);
	and(result000[22],In[22],Nenable);
	and(result000[21],In[21],Nenable);
	and(result000[20],In[20],Nenable);
	and(result000[19],In[19],Nenable);
	and(result000[18],In[18],Nenable);
	and(result000[17],In[17],Nenable);
	and(result000[16],In[16],Nenable);
	and(result000[15],In[15],Nenable);
	and(result000[14],In[14],Nenable);
	and(result000[13],In[13],Nenable);
	and(result000[12],In[12],Nenable);
	and(result000[11],In[11],Nenable);
	and(result000[10],In[10],Nenable);
	and(result000[9],In[9],Nenable);
	and(result000[8],In[8],Nenable);
	and(result000[7],In[7],Nenable);
	and(result000[6],In[6],Nenable);
	and(result000[5],In[5],Nenable);
	and(result000[4],In[4],Nenable);
	and(result000[3],In[3],Nenable);
	and(result000[2],In[2],Nenable);
	and(result000[1],In[1],Nenable);
	and(result000[0],In[0],Nenable);
	
	or(result[31],result00[31],result01[31],result10[31],result11[31],result000[31]);
	or(result[30],result00[30],result01[30],result10[30],result11[30],result000[30]);
	or(result[29],result00[29],result01[29],result10[29],result11[29],result000[29]);
	or(result[28],result00[28],result01[28],result10[28],result11[28],result000[28]);
	or(result[27],result00[27],result01[27],result10[27],result11[27],result000[27]);
	or(result[26],result00[26],result01[26],result10[26],result11[26],result000[26]);
	or(result[25],result00[25],result01[25],result10[25],result11[25],result000[25]);
	or(result[24],result00[24],result01[24],result10[24],result11[24],result000[24]);
	or(result[23],result00[23],result01[23],result10[23],result11[23],result000[23]);
	or(result[22],result00[22],result01[22],result10[22],result11[22],result000[22]);
	or(result[21],result00[21],result01[21],result10[21],result11[21],result000[21]);
	or(result[20],result00[20],result01[20],result10[20],result11[20],result000[20]);
	or(result[19],result00[19],result01[19],result10[19],result11[19],result000[19]);
	or(result[18],result00[18],result01[18],result10[18],result11[18],result000[18]);
	or(result[17],result00[17],result01[17],result10[17],result11[17],result000[17]);
	or(result[16],result00[16],result01[16],result10[16],result11[16],result000[16]);
	or(result[15],result00[15],result01[15],result10[15],result11[15],result000[15]);
	or(result[14],result00[14],result01[14],result10[14],result11[14],result000[14]);
	or(result[13],result00[13],result01[13],result10[13],result11[13],result000[13]);
	or(result[12],result00[12],result01[12],result10[12],result11[12],result000[12]);
	or(result[11],result00[11],result01[11],result10[11],result11[11],result000[11]);
	or(result[10],result00[10],result01[10],result10[10],result11[10],result000[10]);
	or(result[9],result00[9],result01[9],result10[9],result11[9],result000[9]);
	or(result[8],result00[8],result01[8],result10[8],result11[8],result000[8]);
	or(result[7],result00[7],result01[7],result10[7],result11[7],result000[7]);
	or(result[6],result00[6],result01[6],result10[6],result11[6],result000[6]);
	or(result[5],result00[5],result01[5],result10[5],result11[5],result000[5]);
	or(result[4],result00[4],result01[4],result10[4],result11[4],result000[4]);
	or(result[3],result00[3],result01[3],result10[3],result11[3],result000[3]);
	or(result[2],result00[2],result01[2],result10[2],result11[2],result000[2]);
	or(result[1],result00[1],result01[1],result10[1],result11[1],result000[1]);
	or(result[0],result00[0],result01[0],result10[0],result11[0],result000[0]);
endmodule

module shifter_2bit (
    input[31:0] In,
    input[1:0] dir,
    input enable,
    output[31:0] result
);
    wire Nenable;
    not(Nenable,enable);
	wire[31:0] result00; //²¹0×óÒÆ
	wire[31:0] result01; //Ñ­»·×óÒÆ
	wire[31:0] result10; //²¹0ÓÒÒÆ
	wire[31:0] result11; //Ñ­»·ÓÒÒÆ
	wire[31:0] result000;   //ÊÇ·ñÒÆÎ»
	
	//¹¦ÄÜ±àÂë
	wire[3:0] f;
	wire zero;
	xor(zero,dir,dir);
	Decoder_2To4 d(.a(dir), .y(f));
	
	//²¹0×óÒÆ
	and(result00[31],In[29],f[0],enable);
	and(result00[30],In[28],f[0],enable);
	and(result00[29],In[27],f[0],enable);
	and(result00[28],In[26],f[0],enable);
	and(result00[27],In[25],f[0],enable);
	and(result00[26],In[24],f[0],enable);
	and(result00[25],In[23],f[0],enable);
	and(result00[24],In[22],f[0],enable);
	and(result00[23],In[21],f[0],enable);
	and(result00[22],In[20],f[0],enable);
	and(result00[21],In[19],f[0],enable);
	and(result00[20],In[18],f[0],enable);
	and(result00[19],In[17],f[0],enable);
	and(result00[18],In[16],f[0],enable);
	and(result00[17],In[15],f[0],enable);
	and(result00[16],In[14],f[0],enable);
	and(result00[15],In[13],f[0],enable);
	and(result00[14],In[12],f[0],enable);
	and(result00[13],In[11],f[0],enable);
	and(result00[12],In[10],f[0],enable);
	and(result00[11],In[9],f[0],enable);
	and(result00[10],In[8],f[0],enable);
	and(result00[9],In[7],f[0],enable);
	and(result00[8],In[6],f[0],enable);
	and(result00[7],In[5],f[0],enable);
	and(result00[6],In[4],f[0],enable);
	and(result00[5],In[3],f[0],enable);
	and(result00[4],In[2],f[0],enable);
	and(result00[3],In[1],f[0],enable);
	and(result00[2],In[0],f[0],enable);
	and(result00[1],zero,f[0],enable);
	and(result00[0],zero,f[0],enable);
	
	//Ñ­»·×óÒÆ
	and(result01[31],In[29],f[1],enable);      
	and(result01[30],In[28],f[1],enable);      
	and(result01[29],In[27],f[1],enable);      
	and(result01[28],In[26],f[1],enable);      
	and(result01[27],In[25],f[1],enable);      
	and(result01[26],In[24],f[1],enable);      
	and(result01[25],In[23],f[1],enable);      
	and(result01[24],In[22],f[1],enable);      
	and(result01[23],In[21],f[1],enable);      
	and(result01[22],In[20],f[1],enable);      
	and(result01[21],In[19],f[1],enable);      
	and(result01[20],In[18],f[1],enable);      
	and(result01[19],In[17],f[1],enable);      
	and(result01[18],In[16],f[1],enable);      
	and(result01[17],In[15],f[1],enable);      
	and(result01[16],In[14],f[1],enable);      
	and(result01[15],In[13],f[1],enable);      
	and(result01[14],In[12],f[1],enable);      
	and(result01[13],In[11],f[1],enable);      
	and(result01[12],In[10],f[1],enable);      
	and(result01[11],In[9],f[1],enable);       
	and(result01[10],In[8],f[1],enable);       
	and(result01[9],In[7],f[1],enable);        
	and(result01[8],In[6],f[1],enable);        
	and(result01[7],In[5],f[1],enable);        
	and(result01[6],In[4],f[1],enable);        
	and(result01[5],In[3],f[1],enable);        
	and(result01[4],In[2],f[1],enable);        
	and(result01[3],In[1],f[1],enable);        
	and(result01[2],In[0],f[1],enable);        
	and(result01[1],In[31],f[1],enable);         
	and(result01[0],In[30],f[1],enable);         
	
	//²¹0ÓÒÒÆ
	and(result10[31],zero,f[2],enable);
	and(result10[30],zero,f[2],enable);
	and(result10[29],In[31],f[2],enable);
	and(result10[28],In[30],f[2],enable);
	and(result10[27],In[29],f[2],enable);
	and(result10[26],In[28],f[2],enable);
	and(result10[25],In[27],f[2],enable);
	and(result10[24],In[26],f[2],enable);
	and(result10[23],In[25],f[2],enable);
	and(result10[22],In[24],f[2],enable);
	and(result10[21],In[23],f[2],enable);
	and(result10[20],In[22],f[2],enable);
	and(result10[19],In[21],f[2],enable);
	and(result10[18],In[20],f[2],enable);
	and(result10[17],In[19],f[2],enable);
	and(result10[16],In[18],f[2],enable);
	and(result10[15],In[17],f[2],enable);
	and(result10[14],In[16],f[2],enable);
	and(result10[13],In[15],f[2],enable);
	and(result10[12],In[14],f[2],enable);
	and(result10[11],In[13],f[2],enable);
	and(result10[10],In[12],f[2],enable);
	and(result10[9],In[11],f[2],enable);
	and(result10[8],In[10],f[2],enable);
	and(result10[7],In[9],f[2],enable);
	and(result10[6],In[8],f[2],enable);
	and(result10[5],In[7],f[2],enable);
	and(result10[4],In[6],f[2],enable);
	and(result10[3],In[5],f[2],enable);
	and(result10[2],In[4],f[2],enable);
	and(result10[1],In[3],f[2],enable);
	and(result10[0],In[2],f[2],enable);
	
	//Ñ­»·ÓÒÒÆ
	and(result11[31],In[1],f[3],enable);    
	and(result11[30],In[0],f[3],enable);    
	and(result11[29],In[31],f[3],enable);  
	and(result11[28],In[30],f[3],enable);  
	and(result11[27],In[29],f[3],enable);  
	and(result11[26],In[28],f[3],enable);  
	and(result11[25],In[27],f[3],enable);  
	and(result11[24],In[26],f[3],enable);  
	and(result11[23],In[25],f[3],enable);  
	and(result11[22],In[24],f[3],enable);  
	and(result11[21],In[23],f[3],enable);  
	and(result11[20],In[22],f[3],enable);  
	and(result11[19],In[21],f[3],enable);  
	and(result11[18],In[20],f[3],enable);  
	and(result11[17],In[19],f[3],enable);  
	and(result11[16],In[18],f[3],enable);  
	and(result11[15],In[17],f[3],enable);  
	and(result11[14],In[16],f[3],enable);  
	and(result11[13],In[15],f[3],enable);  
	and(result11[12],In[14],f[3],enable);  
	and(result11[11],In[13],f[3],enable);  
	and(result11[10],In[12],f[3],enable);  
	and(result11[9],In[11],f[3],enable);   
	and(result11[8],In[10],f[3],enable);   
	and(result11[7],In[9],f[3],enable);    
	and(result11[6],In[8],f[3],enable);    
	and(result11[5],In[7],f[3],enable);    
	and(result11[4],In[6],f[3],enable);    
	and(result11[3],In[5],f[3],enable);    
	and(result11[2],In[4],f[3],enable);    
	and(result11[1],In[3],f[3],enable);    
	and(result11[0],In[2],f[3],enable);    
	
	//ÊÇ·ñÒÆÎ»
	and(result000[31],In[31],Nenable);
	and(result000[30],In[30],Nenable);
	and(result000[29],In[29],Nenable);
	and(result000[28],In[28],Nenable);
	and(result000[27],In[27],Nenable);
	and(result000[26],In[26],Nenable);
	and(result000[25],In[25],Nenable);
	and(result000[24],In[24],Nenable);
	and(result000[23],In[23],Nenable);
	and(result000[22],In[22],Nenable);
	and(result000[21],In[21],Nenable);
	and(result000[20],In[20],Nenable);
	and(result000[19],In[19],Nenable);
	and(result000[18],In[18],Nenable);
	and(result000[17],In[17],Nenable);
	and(result000[16],In[16],Nenable);
	and(result000[15],In[15],Nenable);
	and(result000[14],In[14],Nenable);
	and(result000[13],In[13],Nenable);
	and(result000[12],In[12],Nenable);
	and(result000[11],In[11],Nenable);
	and(result000[10],In[10],Nenable);
	and(result000[9],In[9],Nenable);
	and(result000[8],In[8],Nenable);
	and(result000[7],In[7],Nenable);
	and(result000[6],In[6],Nenable);
	and(result000[5],In[5],Nenable);
	and(result000[4],In[4],Nenable);
	and(result000[3],In[3],Nenable);
	and(result000[2],In[2],Nenable);
	and(result000[1],In[1],Nenable);
	and(result000[0],In[0],Nenable);
	
	or(result[31],result00[31],result01[31],result10[31],result11[31],result000[31]);
	or(result[30],result00[30],result01[30],result10[30],result11[30],result000[30]);
	or(result[29],result00[29],result01[29],result10[29],result11[29],result000[29]);
	or(result[28],result00[28],result01[28],result10[28],result11[28],result000[28]);
	or(result[27],result00[27],result01[27],result10[27],result11[27],result000[27]);
	or(result[26],result00[26],result01[26],result10[26],result11[26],result000[26]);
	or(result[25],result00[25],result01[25],result10[25],result11[25],result000[25]);
	or(result[24],result00[24],result01[24],result10[24],result11[24],result000[24]);
	or(result[23],result00[23],result01[23],result10[23],result11[23],result000[23]);
	or(result[22],result00[22],result01[22],result10[22],result11[22],result000[22]);
	or(result[21],result00[21],result01[21],result10[21],result11[21],result000[21]);
	or(result[20],result00[20],result01[20],result10[20],result11[20],result000[20]);
	or(result[19],result00[19],result01[19],result10[19],result11[19],result000[19]);
	or(result[18],result00[18],result01[18],result10[18],result11[18],result000[18]);
	or(result[17],result00[17],result01[17],result10[17],result11[17],result000[17]);
	or(result[16],result00[16],result01[16],result10[16],result11[16],result000[16]);
	or(result[15],result00[15],result01[15],result10[15],result11[15],result000[15]);
	or(result[14],result00[14],result01[14],result10[14],result11[14],result000[14]);
	or(result[13],result00[13],result01[13],result10[13],result11[13],result000[13]);
	or(result[12],result00[12],result01[12],result10[12],result11[12],result000[12]);
	or(result[11],result00[11],result01[11],result10[11],result11[11],result000[11]);
	or(result[10],result00[10],result01[10],result10[10],result11[10],result000[10]);
	or(result[9],result00[9],result01[9],result10[9],result11[9],result000[9]);
	or(result[8],result00[8],result01[8],result10[8],result11[8],result000[8]);
	or(result[7],result00[7],result01[7],result10[7],result11[7],result000[7]);
	or(result[6],result00[6],result01[6],result10[6],result11[6],result000[6]);
	or(result[5],result00[5],result01[5],result10[5],result11[5],result000[5]);
	or(result[4],result00[4],result01[4],result10[4],result11[4],result000[4]);
	or(result[3],result00[3],result01[3],result10[3],result11[3],result000[3]);
	or(result[2],result00[2],result01[2],result10[2],result11[2],result000[2]);
	or(result[1],result00[1],result01[1],result10[1],result11[1],result000[1]);
	or(result[0],result00[0],result01[0],result10[0],result11[0],result000[0]);
    endmodule

module shifter_4bit (
    input[31:0] In,
    input[1:0] dir,
    input enable,
    output[31:0] result
);
    wire Nenable;
    not(Nenable,enable);
	wire[31:0] result00; //²¹0×óÒÆ
	wire[31:0] result01; //Ñ­»·×óÒÆ
	wire[31:0] result10; //²¹0ÓÒÒÆ
	wire[31:0] result11; //Ñ­»·ÓÒÒÆ
	wire[31:0] result000;   //ÊÇ·ñÒÆÎ»
	
	//¹¦ÄÜ±àÂë
	wire[3:0] f;
	wire zero;
	xor(zero,dir,dir);
	Decoder_2To4 d(.a(dir), .y(f));
	
	//²¹0×óÒÆ
	and(result00[31],In[27],f[0],enable);
	and(result00[30],In[26],f[0],enable);
	and(result00[29],In[25],f[0],enable);
	and(result00[28],In[24],f[0],enable);
	and(result00[27],In[23],f[0],enable);
	and(result00[26],In[22],f[0],enable);
	and(result00[25],In[21],f[0],enable);
	and(result00[24],In[20],f[0],enable);
	and(result00[23],In[19],f[0],enable);
	and(result00[22],In[18],f[0],enable);
	and(result00[21],In[17],f[0],enable);
	and(result00[20],In[16],f[0],enable);
	and(result00[19],In[15],f[0],enable);
	and(result00[18],In[14],f[0],enable);
	and(result00[17],In[13],f[0],enable);
	and(result00[16],In[12],f[0],enable);
	and(result00[15],In[11],f[0],enable);
	and(result00[14],In[10],f[0],enable);
	and(result00[13],In[9],f[0],enable);
	and(result00[12],In[8],f[0],enable);
	and(result00[11],In[7],f[0],enable);
	and(result00[10],In[6],f[0],enable);
	and(result00[9],In[5],f[0],enable);
	and(result00[8],In[4],f[0],enable);
	and(result00[7],In[3],f[0],enable);
	and(result00[6],In[2],f[0],enable);
	and(result00[5],In[1],f[0],enable);
	and(result00[4],In[0],f[0],enable);
	and(result00[3],zero,f[0],enable);
	and(result00[2],zero,f[0],enable);
	and(result00[1],zero,f[0],enable);
	and(result00[0],zero,f[0],enable);
	
	//Ñ­»·×óÒÆ
	and(result01[31],In[27],f[1],enable);
	and(result01[30],In[26],f[1],enable);
	and(result01[29],In[25],f[1],enable);
	and(result01[28],In[24],f[1],enable);
	and(result01[27],In[23],f[1],enable);
	and(result01[26],In[22],f[1],enable);
	and(result01[25],In[21],f[1],enable);
	and(result01[24],In[20],f[1],enable);
	and(result01[23],In[19],f[1],enable);
	and(result01[22],In[18],f[1],enable);
	and(result01[21],In[17],f[1],enable);
	and(result01[20],In[16],f[1],enable);
	and(result01[19],In[15],f[1],enable);
	and(result01[18],In[14],f[1],enable);
	and(result01[17],In[13],f[1],enable);
	and(result01[16],In[12],f[1],enable);
	and(result01[15],In[11],f[1],enable);
	and(result01[14],In[10],f[1],enable);
	and(result01[13],In[9],f[1],enable);
	and(result01[12],In[8],f[1],enable);
	and(result01[11],In[7],f[1],enable);
	and(result01[10],In[6],f[1],enable);
	and(result01[9],In[5],f[1],enable);
	and(result01[8],In[4],f[1],enable);
	and(result01[7],In[3],f[1],enable);
	and(result01[6],In[2],f[1],enable);
	and(result01[5],In[1],f[1],enable);
	and(result01[4],In[0],f[1],enable);
	and(result01[3],In[31],f[1],enable);
	and(result01[2],In[30],f[1],enable);
	and(result01[1],In[29],f[1],enable);
	and(result01[0],In[28],f[1],enable);         
	
	//²¹0ÓÒÒÆ
	and(result10[31],zero,f[2],enable);
	and(result10[30],zero,f[2],enable);
	and(result10[29],zero,f[2],enable);
	and(result10[28],zero,f[2],enable);
	and(result10[27],In[31],f[2],enable);
	and(result10[26],In[30],f[2],enable);
	and(result10[25],In[29],f[2],enable);
	and(result10[24],In[28],f[2],enable);
	and(result10[23],In[27],f[2],enable);
	and(result10[22],In[26],f[2],enable);
	and(result10[21],In[25],f[2],enable);
	and(result10[20],In[24],f[2],enable);
	and(result10[19],In[23],f[2],enable);
	and(result10[18],In[22],f[2],enable);
	and(result10[17],In[21],f[2],enable);
	and(result10[16],In[20],f[2],enable);
	and(result10[15],In[19],f[2],enable);
	and(result10[14],In[18],f[2],enable);
	and(result10[13],In[17],f[2],enable);
	and(result10[12],In[16],f[2],enable);
	and(result10[11],In[15],f[2],enable);
	and(result10[10],In[14],f[2],enable);
	and(result10[9],In[13],f[2],enable);
	and(result10[8],In[12],f[2],enable);
	and(result10[7],In[11],f[2],enable);
	and(result10[6],In[10],f[2],enable);
	and(result10[5],In[9],f[2],enable);
	and(result10[4],In[8],f[2],enable);
	and(result10[3],In[7],f[2],enable);
	and(result10[2],In[6],f[2],enable);
	and(result10[1],In[5],f[2],enable);
	and(result10[0],In[4],f[2],enable);
	
	//Ñ­»·ÓÒÒÆ
	and(result11[31],In[3],f[3],enable);
	and(result11[30],In[2],f[3],enable);
	and(result11[29],In[1],f[3],enable);
	and(result11[28],In[0],f[3],enable);
	and(result11[27],In[31],f[3],enable);
	and(result11[26],In[30],f[3],enable);
	and(result11[25],In[29],f[3],enable);
	and(result11[24],In[28],f[3],enable);
	and(result11[23],In[27],f[3],enable);
	and(result11[22],In[26],f[3],enable);
	and(result11[21],In[25],f[3],enable);
	and(result11[20],In[24],f[3],enable);
	and(result11[19],In[23],f[3],enable);
	and(result11[18],In[22],f[3],enable);
	and(result11[17],In[21],f[3],enable);
	and(result11[16],In[20],f[3],enable);
	and(result11[15],In[19],f[3],enable);
	and(result11[14],In[18],f[3],enable);
	and(result11[13],In[17],f[3],enable);
	and(result11[12],In[16],f[3],enable);
	and(result11[11],In[15],f[3],enable);
	and(result11[10],In[14],f[3],enable);
	and(result11[9],In[13],f[3],enable);
	and(result11[8],In[12],f[3],enable);
	and(result11[7],In[11],f[3],enable);
	and(result11[6],In[10],f[3],enable);
	and(result11[5],In[9],f[3],enable);
	and(result11[4],In[8],f[3],enable);
	and(result11[3],In[7],f[3],enable);
	and(result11[2],In[6],f[3],enable);
	and(result11[1],In[5],f[3],enable);
	and(result11[0],In[4],f[3],enable);    
	
	//ÊÇ·ñÒÆÎ»
	and(result000[31],In[31],Nenable);
	and(result000[30],In[30],Nenable);
	and(result000[29],In[29],Nenable);
	and(result000[28],In[28],Nenable);
	and(result000[27],In[27],Nenable);
	and(result000[26],In[26],Nenable);
	and(result000[25],In[25],Nenable);
	and(result000[24],In[24],Nenable);
	and(result000[23],In[23],Nenable);
	and(result000[22],In[22],Nenable);
	and(result000[21],In[21],Nenable);
	and(result000[20],In[20],Nenable);
	and(result000[19],In[19],Nenable);
	and(result000[18],In[18],Nenable);
	and(result000[17],In[17],Nenable);
	and(result000[16],In[16],Nenable);
	and(result000[15],In[15],Nenable);
	and(result000[14],In[14],Nenable);
	and(result000[13],In[13],Nenable);
	and(result000[12],In[12],Nenable);
	and(result000[11],In[11],Nenable);
	and(result000[10],In[10],Nenable);
	and(result000[9],In[9],Nenable);
	and(result000[8],In[8],Nenable);
	and(result000[7],In[7],Nenable);
	and(result000[6],In[6],Nenable);
	and(result000[5],In[5],Nenable);
	and(result000[4],In[4],Nenable);
	and(result000[3],In[3],Nenable);
	and(result000[2],In[2],Nenable);
	and(result000[1],In[1],Nenable);
	and(result000[0],In[0],Nenable);
	
	or(result[31],result00[31],result01[31],result10[31],result11[31],result000[31]);
	or(result[30],result00[30],result01[30],result10[30],result11[30],result000[30]);
	or(result[29],result00[29],result01[29],result10[29],result11[29],result000[29]);
	or(result[28],result00[28],result01[28],result10[28],result11[28],result000[28]);
	or(result[27],result00[27],result01[27],result10[27],result11[27],result000[27]);
	or(result[26],result00[26],result01[26],result10[26],result11[26],result000[26]);
	or(result[25],result00[25],result01[25],result10[25],result11[25],result000[25]);
	or(result[24],result00[24],result01[24],result10[24],result11[24],result000[24]);
	or(result[23],result00[23],result01[23],result10[23],result11[23],result000[23]);
	or(result[22],result00[22],result01[22],result10[22],result11[22],result000[22]);
	or(result[21],result00[21],result01[21],result10[21],result11[21],result000[21]);
	or(result[20],result00[20],result01[20],result10[20],result11[20],result000[20]);
	or(result[19],result00[19],result01[19],result10[19],result11[19],result000[19]);
	or(result[18],result00[18],result01[18],result10[18],result11[18],result000[18]);
	or(result[17],result00[17],result01[17],result10[17],result11[17],result000[17]);
	or(result[16],result00[16],result01[16],result10[16],result11[16],result000[16]);
	or(result[15],result00[15],result01[15],result10[15],result11[15],result000[15]);
	or(result[14],result00[14],result01[14],result10[14],result11[14],result000[14]);
	or(result[13],result00[13],result01[13],result10[13],result11[13],result000[13]);
	or(result[12],result00[12],result01[12],result10[12],result11[12],result000[12]);
	or(result[11],result00[11],result01[11],result10[11],result11[11],result000[11]);
	or(result[10],result00[10],result01[10],result10[10],result11[10],result000[10]);
	or(result[9],result00[9],result01[9],result10[9],result11[9],result000[9]);
	or(result[8],result00[8],result01[8],result10[8],result11[8],result000[8]);
	or(result[7],result00[7],result01[7],result10[7],result11[7],result000[7]);
	or(result[6],result00[6],result01[6],result10[6],result11[6],result000[6]);
	or(result[5],result00[5],result01[5],result10[5],result11[5],result000[5]);
	or(result[4],result00[4],result01[4],result10[4],result11[4],result000[4]);
	or(result[3],result00[3],result01[3],result10[3],result11[3],result000[3]);
	or(result[2],result00[2],result01[2],result10[2],result11[2],result000[2]);
	or(result[1],result00[1],result01[1],result10[1],result11[1],result000[1]);
	or(result[0],result00[0],result01[0],result10[0],result11[0],result000[0]);
endmodule

module shifter_8bit (
    input[31:0] In,
    input[1:0] dir,
    input enable,
    output[31:0] result
);
    wire Nenable;
    not(Nenable,enable);
	wire[31:0] result00; //²¹0×óÒÆ
	wire[31:0] result01; //Ñ­»·×óÒÆ
	wire[31:0] result10; //²¹0ÓÒÒÆ
	wire[31:0] result11; //Ñ­»·ÓÒÒÆ
	wire[31:0] result000;   //ÊÇ·ñÒÆÎ»
	
	//¹¦ÄÜ±àÂë
	wire[3:0] f;
	wire zero;
	xor(zero,dir,dir);
	Decoder_2To4 d(.a(dir), .y(f));
	
	//²¹0×óÒÆ
	and(result00[31],In[23],f[0],enable);
	and(result00[30],In[22],f[0],enable);
	and(result00[29],In[21],f[0],enable);
	and(result00[28],In[20],f[0],enable);
	and(result00[27],In[19],f[0],enable);
	and(result00[26],In[18],f[0],enable);
	and(result00[25],In[17],f[0],enable);
	and(result00[24],In[16],f[0],enable);
	and(result00[23],In[15],f[0],enable);
	and(result00[22],In[14],f[0],enable);
	and(result00[21],In[13],f[0],enable);
	and(result00[20],In[12],f[0],enable);
	and(result00[19],In[11],f[0],enable);
	and(result00[18],In[10],f[0],enable);
	and(result00[17],In[9],f[0],enable);
	and(result00[16],In[8],f[0],enable);
	and(result00[15],In[7],f[0],enable);
	and(result00[14],In[6],f[0],enable);
	and(result00[13],In[5],f[0],enable);
	and(result00[12],In[4],f[0],enable);
	and(result00[11],In[3],f[0],enable);
	and(result00[10],In[2],f[0],enable);
	and(result00[9],In[1],f[0],enable);
	and(result00[8],In[0],f[0],enable);
	and(result00[7],zero,f[0],enable);
	and(result00[6],zero,f[0],enable);
	and(result00[5],zero,f[0],enable);
	and(result00[4],zero,f[0],enable);
	and(result00[3],zero,f[0],enable);
	and(result00[2],zero,f[0],enable);
	and(result00[1],zero,f[0],enable);
	and(result00[0],zero,f[0],enable);
	
	//Ñ­»·×óÒÆ
	and(result01[31],In[23],f[1],enable);   
	and(result01[30],In[22],f[1],enable);   
	and(result01[29],In[21],f[1],enable);   
	and(result01[28],In[20],f[1],enable);   
	and(result01[27],In[19],f[1],enable);   
	and(result01[26],In[18],f[1],enable);   
	and(result01[25],In[17],f[1],enable);   
	and(result01[24],In[16],f[1],enable);   
	and(result01[23],In[15],f[1],enable);   
	and(result01[22],In[14],f[1],enable);   
	and(result01[21],In[13],f[1],enable);   
	and(result01[20],In[12],f[1],enable);   
	and(result01[19],In[11],f[1],enable);   
	and(result01[18],In[10],f[1],enable);   
	and(result01[17],In[9],f[1],enable);    
	and(result01[16],In[8],f[1],enable);    
	and(result01[15],In[7],f[1],enable);    
	and(result01[14],In[6],f[1],enable);    
	and(result01[13],In[5],f[1],enable);    
	and(result01[12],In[4],f[1],enable);    
	and(result01[11],In[3],f[1],enable);    
	and(result01[10],In[2],f[1],enable);    
	and(result01[9],In[1],f[1],enable);     
	and(result01[8],In[0],f[1],enable);     
	and(result01[7],In[31],f[1],enable);      
	and(result01[6],In[30],f[1],enable);      
	and(result01[5],In[29],f[1],enable);      
	and(result01[4],In[28],f[1],enable);      
	and(result01[3],In[27],f[1],enable);      
	and(result01[2],In[26],f[1],enable);      
	and(result01[1],In[25],f[1],enable);      
	and(result01[0],In[24],f[1],enable);        
	
	//²¹0ÓÒÒÆ
	and(result10[31],zero,f[2],enable);
	and(result10[30],zero,f[2],enable);
	and(result10[29],zero,f[2],enable);
	and(result10[28],zero,f[2],enable);
	and(result10[27],zero,f[2],enable);
	and(result10[26],zero,f[2],enable);
	and(result10[25],zero,f[2],enable);
	and(result10[24],zero,f[2],enable);
	and(result10[23],In[31],f[2],enable);
	and(result10[22],In[30],f[2],enable);
	and(result10[21],In[29],f[2],enable);
	and(result10[20],In[28],f[2],enable);
	and(result10[19],In[27],f[2],enable);
	and(result10[18],In[26],f[2],enable);
	and(result10[17],In[25],f[2],enable);
	and(result10[16],In[24],f[2],enable);
	and(result10[15],In[23],f[2],enable);
	and(result10[14],In[22],f[2],enable);
	and(result10[13],In[21],f[2],enable);
	and(result10[12],In[20],f[2],enable);
	and(result10[11],In[19],f[2],enable);
	and(result10[10],In[18],f[2],enable);
	and(result10[9],In[17],f[2],enable);
	and(result10[8],In[16],f[2],enable);
	and(result10[7],In[15],f[2],enable);
	and(result10[6],In[14],f[2],enable);
	and(result10[5],In[13],f[2],enable);
	and(result10[4],In[12],f[2],enable);
	and(result10[3],In[11],f[2],enable);
	and(result10[2],In[10],f[2],enable);
	and(result10[1],In[9],f[2],enable);
	and(result10[0],In[8],f[2],enable);
	
	//Ñ­»·ÓÒÒÆ
	and(result11[31],In[7],f[3],enable);        
	and(result11[30],In[6],f[3],enable);        
	and(result11[29],In[5],f[3],enable);        
	and(result11[28],In[4],f[3],enable);        
	and(result11[27],In[3],f[3],enable);        
	and(result11[26],In[2],f[3],enable);        
	and(result11[25],In[1],f[3],enable);        
	and(result11[24],In[0],f[3],enable);        
	and(result11[23],In[31],f[3],enable);      
	and(result11[22],In[30],f[3],enable);      
	and(result11[21],In[29],f[3],enable);      
	and(result11[20],In[28],f[3],enable);      
	and(result11[19],In[27],f[3],enable);      
	and(result11[18],In[26],f[3],enable);      
	and(result11[17],In[25],f[3],enable);      
	and(result11[16],In[24],f[3],enable);      
	and(result11[15],In[23],f[3],enable);      
	and(result11[14],In[22],f[3],enable);      
	and(result11[13],In[21],f[3],enable);      
	and(result11[12],In[20],f[3],enable);      
	and(result11[11],In[19],f[3],enable);      
	and(result11[10],In[18],f[3],enable);      
	and(result11[9],In[17],f[3],enable);       
	and(result11[8],In[16],f[3],enable);       
	and(result11[7],In[15],f[3],enable);       
	and(result11[6],In[14],f[3],enable);       
	and(result11[5],In[13],f[3],enable);       
	and(result11[4],In[12],f[3],enable);       
	and(result11[3],In[11],f[3],enable);       
	and(result11[2],In[10],f[3],enable);       
	and(result11[1],In[9],f[3],enable);        
	and(result11[0],In[8],f[3],enable);        
	
	//ÊÇ·ñÒÆÎ»
	and(result000[31],In[31],Nenable);
	and(result000[30],In[30],Nenable);
	and(result000[29],In[29],Nenable);
	and(result000[28],In[28],Nenable);
	and(result000[27],In[27],Nenable);
	and(result000[26],In[26],Nenable);
	and(result000[25],In[25],Nenable);
	and(result000[24],In[24],Nenable);
	and(result000[23],In[23],Nenable);
	and(result000[22],In[22],Nenable);
	and(result000[21],In[21],Nenable);
	and(result000[20],In[20],Nenable);
	and(result000[19],In[19],Nenable);
	and(result000[18],In[18],Nenable);
	and(result000[17],In[17],Nenable);
	and(result000[16],In[16],Nenable);
	and(result000[15],In[15],Nenable);
	and(result000[14],In[14],Nenable);
	and(result000[13],In[13],Nenable);
	and(result000[12],In[12],Nenable);
	and(result000[11],In[11],Nenable);
	and(result000[10],In[10],Nenable);
	and(result000[9],In[9],Nenable);
	and(result000[8],In[8],Nenable);
	and(result000[7],In[7],Nenable);
	and(result000[6],In[6],Nenable);
	and(result000[5],In[5],Nenable);
	and(result000[4],In[4],Nenable);
	and(result000[3],In[3],Nenable);
	and(result000[2],In[2],Nenable);
	and(result000[1],In[1],Nenable);
	and(result000[0],In[0],Nenable);
	
	or(result[31],result00[31],result01[31],result10[31],result11[31],result000[31]);
	or(result[30],result00[30],result01[30],result10[30],result11[30],result000[30]);
	or(result[29],result00[29],result01[29],result10[29],result11[29],result000[29]);
	or(result[28],result00[28],result01[28],result10[28],result11[28],result000[28]);
	or(result[27],result00[27],result01[27],result10[27],result11[27],result000[27]);
	or(result[26],result00[26],result01[26],result10[26],result11[26],result000[26]);
	or(result[25],result00[25],result01[25],result10[25],result11[25],result000[25]);
	or(result[24],result00[24],result01[24],result10[24],result11[24],result000[24]);
	or(result[23],result00[23],result01[23],result10[23],result11[23],result000[23]);
	or(result[22],result00[22],result01[22],result10[22],result11[22],result000[22]);
	or(result[21],result00[21],result01[21],result10[21],result11[21],result000[21]);
	or(result[20],result00[20],result01[20],result10[20],result11[20],result000[20]);
	or(result[19],result00[19],result01[19],result10[19],result11[19],result000[19]);
	or(result[18],result00[18],result01[18],result10[18],result11[18],result000[18]);
	or(result[17],result00[17],result01[17],result10[17],result11[17],result000[17]);
	or(result[16],result00[16],result01[16],result10[16],result11[16],result000[16]);
	or(result[15],result00[15],result01[15],result10[15],result11[15],result000[15]);
	or(result[14],result00[14],result01[14],result10[14],result11[14],result000[14]);
	or(result[13],result00[13],result01[13],result10[13],result11[13],result000[13]);
	or(result[12],result00[12],result01[12],result10[12],result11[12],result000[12]);
	or(result[11],result00[11],result01[11],result10[11],result11[11],result000[11]);
	or(result[10],result00[10],result01[10],result10[10],result11[10],result000[10]);
	or(result[9],result00[9],result01[9],result10[9],result11[9],result000[9]);
	or(result[8],result00[8],result01[8],result10[8],result11[8],result000[8]);
	or(result[7],result00[7],result01[7],result10[7],result11[7],result000[7]);
	or(result[6],result00[6],result01[6],result10[6],result11[6],result000[6]);
	or(result[5],result00[5],result01[5],result10[5],result11[5],result000[5]);
	or(result[4],result00[4],result01[4],result10[4],result11[4],result000[4]);
	or(result[3],result00[3],result01[3],result10[3],result11[3],result000[3]);
	or(result[2],result00[2],result01[2],result10[2],result11[2],result000[2]);
	or(result[1],result00[1],result01[1],result10[1],result11[1],result000[1]);
	or(result[0],result00[0],result01[0],result10[0],result11[0],result000[0]);
endmodule

module shifter_16bit (
    input[31:0] In,
    input[1:0] dir,
    input enable,
    output[31:0] result
);
    wire Nenable;
    not(Nenable,enable);
	wire[31:0] result00; //²¹0×óÒÆ
	wire[31:0] result01; //Ñ­»·×óÒÆ
	wire[31:0] result10; //²¹0ÓÒÒÆ
	wire[31:0] result11; //Ñ­»·ÓÒÒÆ
	wire[31:0] result000;   //ÊÇ·ñÒÆÎ»
	
	//¹¦ÄÜ±àÂë
	wire[3:0] f;
	wire zero;
	xor(zero,dir,dir);
	Decoder_2To4 d(.a(dir), .y(f));
	
	//²¹0×óÒÆ
	and(result00[31],In[15],f[0],enable);
	and(result00[30],In[14],f[0],enable);
	and(result00[29],In[13],f[0],enable);
	and(result00[28],In[12],f[0],enable);
	and(result00[27],In[11],f[0],enable);
	and(result00[26],In[10],f[0],enable);
	and(result00[25],In[9],f[0],enable);
	and(result00[24],In[8],f[0],enable);
	and(result00[23],In[7],f[0],enable);
	and(result00[22],In[6],f[0],enable);
	and(result00[21],In[5],f[0],enable);
	and(result00[20],In[4],f[0],enable);
	and(result00[19],In[3],f[0],enable);
	and(result00[18],In[2],f[0],enable);
	and(result00[17],In[1],f[0],enable);
	and(result00[16],zero,f[0],enable);
	and(result00[15],zero,f[0],enable);
	and(result00[14],zero,f[0],enable);
	and(result00[13],zero,f[0],enable);
	and(result00[12],zero,f[0],enable);
	and(result00[11],zero,f[0],enable);
	and(result00[10],zero,f[0],enable);
	and(result00[9],zero,f[0],enable);
	and(result00[8],zero,f[0],enable);
	and(result00[7],zero,f[0],enable);
	and(result00[6],zero,f[0],enable);
	and(result00[5],zero,f[0],enable);
	and(result00[4],zero,f[0],enable);
	and(result00[3],zero,f[0],enable);
	and(result00[2],zero,f[0],enable);
	and(result00[1],zero,f[0],enable);
	and(result00[0],zero,f[0],enable);
	
	//Ñ­»·×óÒÆ
	and(result01[31],In[15],f[1],enable);
	and(result01[30],In[14],f[1],enable);
	and(result01[29],In[13],f[1],enable);
	and(result01[28],In[12],f[1],enable);
	and(result01[27],In[11],f[1],enable);
	and(result01[26],In[10],f[1],enable);
	and(result01[25],In[9],f[1],enable);
	and(result01[24],In[8],f[1],enable);
	and(result01[23],In[7],f[1],enable);
	and(result01[22],In[6],f[1],enable);
	and(result01[21],In[5],f[1],enable);
	and(result01[20],In[4],f[1],enable);
	and(result01[19],In[3],f[1],enable);
	and(result01[18],In[2],f[1],enable);
	and(result01[17],In[1],f[1],enable);
	and(result01[16],In[0],f[1],enable);
	and(result01[15],In[31],f[1],enable);
	and(result01[14],In[30],f[1],enable);
	and(result01[13],In[29],f[1],enable);
	and(result01[12],In[28],f[1],enable);
	and(result01[11],In[27],f[1],enable);
	and(result01[10],In[26],f[1],enable);
	and(result01[9],In[25],f[1],enable);
	and(result01[8],In[24],f[1],enable);
	and(result01[7],In[23],f[1],enable);
	and(result01[6],In[22],f[1],enable);
	and(result01[5],In[21],f[1],enable);
	and(result01[4],In[20],f[1],enable);
	and(result01[3],In[19],f[1],enable);
	and(result01[2],In[18],f[1],enable);
	and(result01[1],In[17],f[1],enable);
	and(result01[0],In[16],f[1],enable);    
	
	//²¹0ÓÒÒÆ          
	and(result10[31],zero,f[2],enable);
	and(result10[30],zero,f[2],enable);
	and(result10[29],zero,f[2],enable);
	and(result10[28],zero,f[2],enable);
	and(result10[27],zero,f[2],enable);
	and(result10[26],zero,f[2],enable);
	and(result10[25],zero,f[2],enable);
	and(result10[24],zero,f[2],enable);
	and(result10[23],zero,f[2],enable);
	and(result10[22],zero,f[2],enable);
	and(result10[21],zero,f[2],enable);
	and(result10[20],zero,f[2],enable);
	and(result10[19],zero,f[2],enable);
	and(result10[18],zero,f[2],enable);
	and(result10[17],zero,f[2],enable);
	and(result10[16],zero,f[2],enable);
	and(result10[15],In[31],f[2],enable);
	and(result10[14],In[30],f[2],enable);
	and(result10[13],In[29],f[2],enable);
	and(result10[12],In[28],f[2],enable);
	and(result10[11],In[27],f[2],enable);
	and(result10[10],In[26],f[2],enable);
	and(result10[9],In[25],f[2],enable);
	and(result10[8],In[24],f[2],enable);
	and(result10[7],In[23],f[2],enable);
	and(result10[6],In[22],f[2],enable);
	and(result10[5],In[21],f[2],enable);
	and(result10[4],In[20],f[2],enable);
	and(result10[3],In[19],f[2],enable);
	and(result10[2],In[18],f[2],enable);
	and(result10[1],In[17],f[2],enable);
	and(result10[0],In[16],f[2],enable);
	
	//Ñ­»·ÓÒÒÆ
	and(result11[31],In[15],f[3],enable);
	and(result11[30],In[14],f[3],enable);
	and(result11[29],In[13],f[3],enable);
	and(result11[28],In[12],f[3],enable);
	and(result11[27],In[11],f[3],enable);
	and(result11[26],In[10],f[3],enable);
	and(result11[25],In[9],f[3],enable);
	and(result11[24],In[8],f[3],enable);
	and(result11[23],In[7],f[3],enable);
	and(result11[22],In[6],f[3],enable);
	and(result11[21],In[5],f[3],enable);
	and(result11[20],In[4],f[3],enable);
	and(result11[19],In[3],f[3],enable);
	and(result11[18],In[2],f[3],enable);
	and(result11[17],In[1],f[3],enable);
	and(result11[16],In[0],f[3],enable);
	and(result11[15],In[31],f[3],enable);
	and(result11[14],In[30],f[3],enable);
	and(result11[13],In[29],f[3],enable);
	and(result11[12],In[28],f[3],enable);
	and(result11[11],In[27],f[3],enable);
	and(result11[10],In[26],f[3],enable);
	and(result11[9],In[25],f[3],enable);
	and(result11[8],In[24],f[3],enable);
	and(result11[7],In[23],f[3],enable);
	and(result11[6],In[22],f[3],enable);
	and(result11[5],In[21],f[3],enable);
	and(result11[4],In[20],f[3],enable);
	and(result11[3],In[19],f[3],enable);
	and(result11[2],In[18],f[3],enable);
	and(result11[1],In[17],f[3],enable);
	and(result11[0],In[16],f[3],enable);     
	
	//ÊÇ·ñÒÆÎ»
	and(result000[31],In[31],Nenable);
	and(result000[30],In[30],Nenable);
	and(result000[29],In[29],Nenable);
	and(result000[28],In[28],Nenable);
	and(result000[27],In[27],Nenable);
	and(result000[26],In[26],Nenable);
	and(result000[25],In[25],Nenable);
	and(result000[24],In[24],Nenable);
	and(result000[23],In[23],Nenable);
	and(result000[22],In[22],Nenable);
	and(result000[21],In[21],Nenable);
	and(result000[20],In[20],Nenable);
	and(result000[19],In[19],Nenable);
	and(result000[18],In[18],Nenable);
	and(result000[17],In[17],Nenable);
	and(result000[16],In[16],Nenable);
	and(result000[15],In[15],Nenable);
	and(result000[14],In[14],Nenable);
	and(result000[13],In[13],Nenable);
	and(result000[12],In[12],Nenable);
	and(result000[11],In[11],Nenable);
	and(result000[10],In[10],Nenable);
	and(result000[9],In[9],Nenable);
	and(result000[8],In[8],Nenable);
	and(result000[7],In[7],Nenable);
	and(result000[6],In[6],Nenable);
	and(result000[5],In[5],Nenable);
	and(result000[4],In[4],Nenable);
	and(result000[3],In[3],Nenable);
	and(result000[2],In[2],Nenable);
	and(result000[1],In[1],Nenable);
	and(result000[0],In[0],Nenable);
	
	or(result[31],result00[31],result01[31],result10[31],result11[31],result000[31]);
	or(result[30],result00[30],result01[30],result10[30],result11[30],result000[30]);
	or(result[29],result00[29],result01[29],result10[29],result11[29],result000[29]);
	or(result[28],result00[28],result01[28],result10[28],result11[28],result000[28]);
	or(result[27],result00[27],result01[27],result10[27],result11[27],result000[27]);
	or(result[26],result00[26],result01[26],result10[26],result11[26],result000[26]);
	or(result[25],result00[25],result01[25],result10[25],result11[25],result000[25]);
	or(result[24],result00[24],result01[24],result10[24],result11[24],result000[24]);
	or(result[23],result00[23],result01[23],result10[23],result11[23],result000[23]);
	or(result[22],result00[22],result01[22],result10[22],result11[22],result000[22]);
	or(result[21],result00[21],result01[21],result10[21],result11[21],result000[21]);
	or(result[20],result00[20],result01[20],result10[20],result11[20],result000[20]);
	or(result[19],result00[19],result01[19],result10[19],result11[19],result000[19]);
	or(result[18],result00[18],result01[18],result10[18],result11[18],result000[18]);
	or(result[17],result00[17],result01[17],result10[17],result11[17],result000[17]);
	or(result[16],result00[16],result01[16],result10[16],result11[16],result000[16]);
	or(result[15],result00[15],result01[15],result10[15],result11[15],result000[15]);
	or(result[14],result00[14],result01[14],result10[14],result11[14],result000[14]);
	or(result[13],result00[13],result01[13],result10[13],result11[13],result000[13]);
	or(result[12],result00[12],result01[12],result10[12],result11[12],result000[12]);
	or(result[11],result00[11],result01[11],result10[11],result11[11],result000[11]);
	or(result[10],result00[10],result01[10],result10[10],result11[10],result000[10]);
	or(result[9],result00[9],result01[9],result10[9],result11[9],result000[9]);
	or(result[8],result00[8],result01[8],result10[8],result11[8],result000[8]);
	or(result[7],result00[7],result01[7],result10[7],result11[7],result000[7]);
	or(result[6],result00[6],result01[6],result10[6],result11[6],result000[6]);
	or(result[5],result00[5],result01[5],result10[5],result11[5],result000[5]);
	or(result[4],result00[4],result01[4],result10[4],result11[4],result000[4]);
	or(result[3],result00[3],result01[3],result10[3],result11[3],result000[3]);
	or(result[2],result00[2],result01[2],result10[2],result11[2],result000[2]);
	or(result[1],result00[1],result01[1],result10[1],result11[1],result000[1]);
	or(result[0],result00[0],result01[0],result10[0],result11[0],result000[0]);
endmodule



module shifter_32bit(
    input [31:0] In,
    input [1:0]dir, //00±íÊ¾²¹0Ïò×óÒÆ,01±íÊ¾Ñ­»·Ïò×óÒÆ,10±íÊ¾²¹0ÏòÓÒÒÆ,11±íÊ¾Ñ­»·ÏòÓÒÒÆ
    input [4:0] bite,
    output  [31:0] result
    );
    wire[31:0] temp[3:0];
    shifter_1bit u1(.In(In), .dir(dir), .enable(bite[0]), .result(temp[0]));
    shifter_2bit u2(.In(temp[0]), .dir(dir), .enable(bite[1]), .result(temp[1]));
    shifter_4bit u3(.In(temp[1]), .dir(dir), .enable(bite[2]), .result(temp[2]));
    shifter_8bit u4(.In(temp[2]), .dir(dir), .enable(bite[3]), .result(temp[3]));
    shifter_16bit u5(.In(temp[3]), .dir(dir), .enable(bite[4]), .result(result));
endmodule
