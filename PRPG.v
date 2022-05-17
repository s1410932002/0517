module PRPG(clk,clr,X);
  input clk;
  input clr;
  output X;
  reg[3:1] Q;  

  assign X=Q[0]; 

always@(posedge clk)
  if(clr)
    Q<=3'b100;  
  else begin
    Q[3:2]<=Q[2:1];
    Q[1]<=Q[1]+Q[3];
  end
endmodule