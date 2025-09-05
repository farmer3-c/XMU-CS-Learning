module binbcd4_tb(  );

	reg[3:0] B;
    wire[4:0] P;

    binbcd4 uut(
        .b(B),
        .p(P)
    );
    
    initial
    begin
        B = 0;
        repeat (16)
        #100 B = B + 1;  //重复16次执行该行代码
    end
endmodule
