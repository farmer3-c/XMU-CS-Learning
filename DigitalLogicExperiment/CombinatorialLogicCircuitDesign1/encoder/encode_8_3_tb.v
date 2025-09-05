module encode_8_3_tb( );

    reg [7:0] IN;
    wire [2:0] ENCODE; 

    encode_8_3 uut(
        .in(IN),
        .encode(ENCODE)
    );
    
    initial
    begin
        IN = 8'b00000001;  // 初始输入
        repeat (8)
        begin
            #100 IN = IN << 1;  // 每隔10个时间单位左移一位
        end
        #10 $finish;  // 仿真结束
    end   

endmodule
