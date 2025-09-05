module decode38_a_tb(  );

    reg [2:0] A;
    wire [7:0] Y;
    decode38_a uut(
        .a(A),
        .y(Y)
    );
    
    initial
    begin
        A = 0;
        repeat (8)
        begin
            #100 A = A + 1;  // 每隔10个时间单位增加输入值
        end
        #10 $finish;  // 仿真结束
    end
endmodule
