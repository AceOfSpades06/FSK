// tb for the detection code
// produces a stream of sin waves as input

module detection_tb;
  reg [7:0] A;
  wire out;
  integer i;
  
  detection testbench(
    .A(A);
    .out(out);
  );
  
  initial
    begin
//put the entire sin table here
      
    end
  
  // producing the bitstream 1011
  
  repeat(1500)
    begin
        A = sine[i];
        i = i+ 1;
      #1
      if(i == 360)
            i = 0;
    end
  i=0;
  repeat(1500)
    begin
        A = sine[i];
        i = i+ 1;
      #2
      if(i == 360)
            i = 0;
    end
  i=0;
  repeat(1500)
    begin
        A = sine[i];
        i = i+ 1;
      #1
      if(i == 360)
            i = 0;
    end
  i=0;
  repeat(1500)
    begin
        A = sine[i];
        i = i+ 1;
      #1
      if(i == 360)
            i = 0;
    end
  $finish;
  
endmodule  
