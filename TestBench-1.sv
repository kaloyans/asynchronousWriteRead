`include "mem_aw_ar.sv"
module testbench ();
   reg [7:0] addr;		
   reg [15:0] wdata;
   reg wenable;

   wire [15:0] rdata;

   mem_aw_ar memA(
		  .address(addr),
		  .wd(wdata),
		  .wen(wenable),
		  .rd(rdata)
		  );
   
     initial
       begin
       #0 begin
	  wenable = 1;
	  wdata = 16'h10;
	  addr = 8'h11;
       end 
       #20 begin
          wenable = 0;
          wdata = 16'h12;
       end
   
       #20 begin
	  wenable = 1;
	  wdata = 16'h13;
	  addr = 8'h14;
       end
       #20 begin
	  wenable = 0;
	  wdata = 16'h15;
       end

       #20 begin
	  wenable = 1;
	  wdata = 16'h60;
	  addr = 8'h16;
       end
       #20 begin
	  wenable = 0;
          wdata = 16'h66;
       end

       #20 begin
	  wenable = 1;
	  wdata = 16'h50;
	  addr = 8'h15;
       end
       #20 begin
	  wenable = 0;
	  wdata = 16'h55;
       end
	  
   $finish;
end
endmodule // testbench

	  
       

   
   
