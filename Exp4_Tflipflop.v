module t(t,clk,rst,q);
input t,clk,rst;
output reg q;
always @ (posedge clk)
begin 
if (rst==1)
q=1'b0;
else if (t==0)
q=q;
else
q=~q;
end
endmodule
