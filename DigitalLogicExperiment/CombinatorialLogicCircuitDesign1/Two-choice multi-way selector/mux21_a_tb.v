module mux21_a_tb( );
	reg A,B,S;
	wire Y;
    mux21_a uut(
        .s(S),
        .a(A),
        .b(B),
        .y(Y)
    );
    
    // A,B,S激励随时间变化
    initial begin
        // 初始值
        A = 0; B = 0; S = 0;
        #10;
        
        // 测试各种组合
        A = 0; B = 1; S = 0; #10; // y应该输出A=0
        A = 1; B = 0; S = 0; #10; // y应该输出B=1
        A = 1; B = 1; S = 0; #10; // y应该输出A=1
        A = 0; B = 0; S = 1; #10; // y应该输出B=0
        A = 0; B = 1; S = 1; #10; // y应该输出A=1
        A = 1; B = 0; S = 1; #10; // y应该输出B=1
        A = 1; B = 1; S = 1; #10; // y应该输出A=1
        A = 0; B = 0; S = 0; #10; // y应该输出B=1
        
        // 结束仿真
        $finish;
    end
endmodule
