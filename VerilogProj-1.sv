module mem_aw_ar(
		 address,            //address
		 wd,                //write data
		 wen,              //write enable
		 rd              //read data
		 );
input [7:0] address;
input [15:0] wd;
input wen;

output [15:0] rd;

reg [15:0] rd;
reg [15:0] memory [0:255];

assign rd = memory [address];
always @ (address or wd or wen)
  begin
     if (wen == 1)
       memory [address] = wd;
  end
endmodule // mem_aw_ar



 
