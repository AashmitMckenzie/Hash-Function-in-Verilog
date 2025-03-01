module top_hash_tb;
	reg clk;
	reg reset;
	reg [127:0] message;
	wire [31:0] hash_out;

	top_hash uut (
		.clk(clk), 
		.reset(reset), 
		.message(message), 
		.hash_out(hash_out)
	);

	initial begin
		clk = 0;
		reset = 1;
		#5 reset = 0;
		
		message = 128'hDEADBEEFCAFEBABE0123456789ABCDEF;

		#10;
		
		$display("Message: %h", message);
		$display("Hash: %h", hash_result);
		
		#20 $finish;
		
	end
	always #5 clk = ~clk;
endmodule

