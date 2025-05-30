module mux41(
    input wire [3:0] a,
    input wire [1:0] s,
    output reg y
    );
    always @ (*)
        case(s)
            2'b00 : y = a[0];  // 当s=00时选择a[0]
            2'b01 : y = a[1];  // 当s=01时选择a[1]
            2'b10 : y = a[2];  // 当s=10时选择a[2]
            2'b11 : y = a[3];  // 当s=11时选择a[3]
            default : y = a[0]; // 默认选择a[0]
        endcase
endmodule
