module x7seg_top(
    input clk,
    input clr_n,
    output [6:0] a_to_g,  
    output[3:0] an 
    );
    
    wire clr;
    wire [15:0] x;
    assign x=32'h1234;

    x7seg X1(
        .x(x),           // 16位输入数据
        .clk(clk),       // 时钟信号
        .clr_n(clr_n),   // 清零信号（低电平有效）
        .a_to_g(a_to_g), // 七段数码管段选信号
        .an(an)          // 数码管位选信号
    );

endmodule
