// demodulating the FSK signal using peak detection principle.
module fsk(clk,data_in,data_out);

input clk;
input [7:0] data_in;
// this is a 8 bit input
output data_out;
//output is either 0,1 for a clk cycle
reg [8:0] sin_inv [-100:100];
reg [8:0] angle ;
integer i;

initial begin
i = 0;


//put sin inverse values here

end

always@(posedge(clk))
begin

angle = sin_inv();

end
