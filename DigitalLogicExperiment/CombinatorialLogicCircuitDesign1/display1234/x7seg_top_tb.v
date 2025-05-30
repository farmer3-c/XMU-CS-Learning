module x7seg_top_tb ( );
    reg clk;
    reg clr_n;
    wire [6:0] a_to_g;
    wire [3:0] an;

   x7seg_top tb(
        .clk(clk),
        .clr_n(clr_n),
        .a_to_g(a_to_g),
        .an(an)
    );   //调用x7seg_top模块

    parameter period = 10;
    // 生成占空比50%的时钟波形
    always #(period/2) 
    clk = ~clk; 
   
    initial
         begin
           clk = 0;
           clr_n = 0;
           
           #10 clr_n = 1; 
           #10 clr_n = 0; 
           
end
endmodule
