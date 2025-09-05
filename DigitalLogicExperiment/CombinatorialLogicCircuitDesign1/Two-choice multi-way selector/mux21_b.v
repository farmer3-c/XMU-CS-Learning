module mux21_b(input s, input a, input b, output y);
    assign y = (s) ? b : a;    // 使用三元运算符描述
endmodule
