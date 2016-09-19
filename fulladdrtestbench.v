// Code your testbench here
// or browse Examples
module testfixture;
  reg in1,in2,carryin;
  wire sum,carryout;
  fuladdr i1(.sum(sum),
             .cout(carryout),
             .a(in1),
             .b(in2),
             .cin(carryin));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testfixture);
      carryin=0;in1=0;in2=0;
      #10 in2=1;
      #10 in1=1; in2=0;
      #10 in2=1;
      #10 carryin=1;in1=0;in2=0;
      #10 in2=1;
      #10 in1=1; in2=0;
      #10 in2=1;
      #10;
    end
endmodule