module xor_hash(
	input wire [127:0] data_in,
	output wire [31:0] hash_out
   );
	
	assign hash_out = data_in[127:97] ^ data_in[95:64] ^ data_in[63:32] ^ data_in[31:0]; 


endmodule
