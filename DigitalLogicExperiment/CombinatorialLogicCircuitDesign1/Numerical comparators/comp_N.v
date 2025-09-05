module comp_N
    #(parameter N = 4)  // 定义参数N，默认值为4
    (input [N-1:0] in0, in1,
    output reg gt, eq, lt
    );
    always @ (*)
    begin
        gt = 0;    
        eq = 0;    
        lt = 0;
        if (in0 > in1) gt = 1;  // 当in0大于in1时，gt置1
        else if (in0 == in1) eq = 1;  // 当in0等于in1时，eq置1
        else lt = 1;  // 否则lt置1
    end
endmodule
