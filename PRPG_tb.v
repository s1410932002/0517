module PRPG_tb;
  reg clk_tb,clr_tb;
  wire X_tb;

  PRPG PRPG_tb(.clk(clk_tb),.clr(clr_tb),.X(X_tb));

  initial begin
    clk_tb=0;
    clr_tb=1;
  end

  always begin
    #5 clk_tb=~clk_tb;
  end

  initial begin
    #5 clr_tb=1;
    #5 clr_tb=0;
    #200 $finish;
  end

  initial begin
    $dumpfile("PRPG.vcd");
    $dumpvars(0,PRPG_tb);
  end
endmodule