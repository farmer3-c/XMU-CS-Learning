module  gates2(
    input  a,
    input  b,
    output  [5:0] y
    );
    assign y[0] = a&b;         //与
    assign y[1] = a|b;          //或
    assign y[2] = ~(a&b);      //与非
    assign y[3] = ~(a|b);       //或非
    assign y[4] = a^b;         //异或
    assign y[5] = ~(a^b);        //同或
endmodule 
