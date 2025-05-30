module mux21_a(input s, input a, input b, output y);
    // 定义中间变量
    wire not_s, and1_out, and2_out;
    // 使用 not 门计算选择信号 s 的反相
    not not1(not_s, s);
    // 使用 and 门计算选择信号的s反相和输入 a 的与
    and and1(and1_out, not_s, a);
    // 使用 and 门计算选择信号 s 和输入 b 的与
    and and2(and2_out, s, b);
    // 使用 or 门将两个 AND 门的输出连接起来
    or or1(y, and1_out, and2_out);
endmodule
