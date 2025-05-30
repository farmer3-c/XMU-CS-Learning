module flowing_light(
    input clk,  
    input rst,  
    output [15:0] led  //EGO1有16个LED灯  
);  
    reg [27 : 0] cnt_reg;   
  //寄存器
    reg [15 : 0] light_reg;
      
    always @ (posedge clk)  
    begin  
        if (rst)   
            cnt_reg <= 0;   
        else if (cnt_reg == 28'D100000000)    //cnt_reg仿真时修改为28'D10
            cnt_reg <= 0;   
        else      
            cnt_reg <= cnt_reg + 1;  
    end
      
    always @ (posedge clk)   
    begin  
        if (rst)  
            light_reg <= 16'h8000;    // 初始值改为从最右边LED开始
        else if (cnt_reg == 28'D100000000)    //cnt_reg仿真时修改为28'D10
        begin  
            if (light_reg == 16'h0001)    // 检查是否到达最左边
                light_reg <= 16'h8000;  
            else  
                light_reg <= light_reg >> 1;  // 改为右移
        end  
    end
      
    assign led = light_reg;   
endmodule
