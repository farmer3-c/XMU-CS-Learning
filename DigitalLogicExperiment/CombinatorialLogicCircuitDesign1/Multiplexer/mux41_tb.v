module mux41_tb(  );
    reg [3:0] A;
    reg [1:0] S;
    wire Y;     
    mux41 uut(
        .a(A),
        .s(S),
        .y(Y)
    );
    
    initial
    begin
        // 初始化输入
        A = 4'b0001;
        S = 2'b00;
        
        // 时间间隔设为100ns
         
        #100 S = 2'b01;  A = 4'b0010;              // 选择a[1]=0
        #100 S = 2'b10;    A = 4'b0100;            // 选择a[2]=1
        #100 S = 2'b11;      A = 4'b1000;          // 选择a[3]=0
        #100 S = 2'b00;      A = 4'b0000; 
     
        
        #100 $finish; // 结束仿真
    end
endmodule
