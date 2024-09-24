module tb_MSB;
logic clk;
logic [31:0]A,Q,QM;

MSB dut(.clk(clk), .A(A), .Q(Q), .QM(QM));

initial begin 
    clk = 0;
    forever #5 clk = ~clk;
   end

initial 
begin
@(posedge clk);
A= 32'd5; Q = 32'd40;
@(posedge clk);
A = -32'd5; Q = 32'd3;
 
end

initial
begin
$monitor("A = %d, Q = %d,QM = %d", A,Q,QM);
end
endmodule