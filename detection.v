// demodulating the FSK signal using peak detection principle.
module fsk(clk,data_in,data_out);

input clk;
input [7:0] data_in;
// this is a 8 bit input
output data_out;
//output is either 0,1 for a clk cycle
//reg [8:0] sin_inv [-100:100];
//reg [8:0] angle ;
  reg [8:0] peak ;
integer i;

initial begin
i = 0;
peak = 'd0;
//put sin inverse values here
end

  //here we assume that the output 0,1 have less frequency than the clk(or the sin waves used in modulation);

always@(posedge(clk))
begin
  if(peak<data_in) begin
    peak = data_in;
  end
  else if(peak > data_in)begin
    peak = data_in;
    i = i+1;
  end
  else peak = data_in;
 
//angle = sin_inv();
end
  
  if(i==4) data_out = 1;
  else data_out =0;
  
  
endmodule
