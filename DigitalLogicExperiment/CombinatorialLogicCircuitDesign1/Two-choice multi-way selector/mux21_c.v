module mux21_c(input s, input a, input b, output y);
    reg y;
    
    always @ (*)
    begin
        // 使用if else实现行为描述
        if(s)
            y = b;
        else
            y = a;
    end
endmodule
