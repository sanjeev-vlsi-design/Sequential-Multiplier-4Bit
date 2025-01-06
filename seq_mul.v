
module seq_mul(
    output reg [7:0] op,
    output reg ready_out,
    input [3:0] a, b,
    input load, clk, rst_a
);
    reg [7:0] tmp0, tmp1, tmp2, tmp3;
    wire [7:0] tmp;

    assign tmp = {4'b0000, b};

    always @(posedge clk) begin
        if (rst_a) begin
            op <= 8'b0000_0000;
            ready_out <= 1'b0;
        end else if (load) begin
            tmp0 <= (a[0] == 1'b1) ? tmp : 8'b0000_0000;
            tmp1 <= (a[1] == 1'b1) ? tmp << 1 : 8'b0000_0000;
            tmp2 <= (a[2] == 1'b1) ? tmp << 2 : 8'b0000_0000;
            tmp3 <= (a[3] == 1'b1) ? tmp << 3 : 8'b0000_0000;

            op <= tmp0 + tmp1 + tmp2 + tmp3;
            ready_out <= 1'b1;
        end
    end
endmodule
