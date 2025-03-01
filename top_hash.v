module top_hash(
	input wire clk,
	input wire reset,
	input wire [127:0] message,
	output wire [31:0] hash_out
	);
	
	xor_hash hash_core (
		.data_in(message),
		.hash_out(hash_out)
	);
endmodule
