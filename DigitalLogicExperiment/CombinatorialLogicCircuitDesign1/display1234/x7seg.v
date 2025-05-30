module x7seg(
    input [15:0] x,
    input clk,
    input clr_n,
    output reg [6:0] a_to_g,
    output reg [3:0] an        //一组4个数码管的片选信号
    );
    wire [1:0] s;    //   选择数码管点亮的位置；
    reg [3:0] digit;
    reg [19:0] clkdiv;
  //    assign s = clkdiv[19:18];    //18分频，每5.2ms变化一次，依次点亮4个数码管
    assign s = clkdiv[4:3];    //仿真测试，快速依次点亮4个数码
    always @ ( * )
        case ( s )              //x16位，依次存放4位要显示的数
            0:digit = x[3:0];
            1:digit = x[7:4];
            2:digit = x[11:8];
            3:digit = x[15:12];
            default: digit = x[3:0];
        endcase
        
    always @ ( * )                 //段译码
        case ( digit )
            4'h0: a_to_g = 7'b1111110;   
            4'h1: a_to_g = 7'b0110000;  
            4'h2: a_to_g = 7'b1101101;   
            4'h3: a_to_g = 7'b1111001;   
            4'h4: a_to_g = 7'b0110011;   
            4'h5: a_to_g = 7'b1011011;   
            4'h6: a_to_g = 7'b1011111;   
            4'h7: a_to_g = 7'b1110000;   
            4'h8: a_to_g = 7'b1111111;   
            4'h9: a_to_g = 7'b1111011;   
            4'hA: a_to_g = 7'b1110111; 
            4'hB: a_to_g = 7'b0011111;  
            4'hC: a_to_g = 7'b1001110; 
            4'hD: a_to_g = 7'b0111101;  
            4'hE: a_to_g = 7'b1001111;  
            4'hF: a_to_g = 7'b1000111;   
            default:a_to_g=7'b1111110;
        endcase

	always @ ( * )               	//依次点亮4个数码管
		begin
            //首先设置四位数码管为未选中状态
			an = 4'b0000;         	//ACE1片选信号， 低电平有效
									//EGO1片选信号，高电平有效
          //当清零端没有按下（选中）的时候，依次选中各个数码管         
			if(clr_n==0)    
				an[s] = 1;     	//ACE1片选信号， 低电平有效
									//EGO1片选信号，高电平有效
		end
            
   always @ ( posedge clk or negedge clr_n )    //使用计数器分频
            begin
                if ( clr_n == 1 )
                  clkdiv<=0;         //clkdiv清零；
                else  
                   clkdiv<=clkdiv+1;         //clkdiv+1;
            end
			
endmodule
