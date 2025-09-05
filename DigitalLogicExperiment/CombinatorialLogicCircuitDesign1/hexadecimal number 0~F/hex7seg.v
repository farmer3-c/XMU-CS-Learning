module hex7seg(
    input [3:0] x,                // 4位输入信号
    output reg [6:0] a_to_g,     // 7段数码管输出 
    output an                    // 片选信号（高电平有效）    
    ); 
    
    assign an = 1'b1;             // EGO1片选信号为高电平选中，始终选中DK8数码管
    
    // 组合逻辑解码器
    always@(*)
        case(x)
            0: a_to_g = 7'b1111110;  // 0
            1: a_to_g = 7'b0110000;  // 1
            2: a_to_g = 7'b1101101;  // 2
            3: a_to_g = 7'b1111001;  // 3
            4: a_to_g = 7'b0110011;  // 4
            5: a_to_g = 7'b1011011;  // 5
            6: a_to_g = 7'b1011111;  // 6
            7: a_to_g = 7'b1110000;  // 7
            8: a_to_g = 7'b1111111;  // 8
            9: a_to_g = 7'b1111011;  // 9
            'hA: a_to_g = 7'b1110111; // A
            'hB: a_to_g = 7'b0011111; // B
            'hC: a_to_g = 7'b1001110; // C
            'hD: a_to_g = 7'b0111101; // D
            'hE: a_to_g = 7'b1001111; // E
            'hF: a_to_g = 7'b1000111; // F
            default: a_to_g = 7'b1111110; // 默认显示0
        endcase
endmodule
