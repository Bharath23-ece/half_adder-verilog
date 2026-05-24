module testbench;
reg a;
reg b;
wire sum;
wire carry;
half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));
//samples
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,testbench);
    $monitor("time=%t a=%b b=%b sum=%b carry=%b",$time,a,b,sum,carry);
    a=1'b1;b=1'b1;
    #10;
    a=1'b0;b=1'b1;
    #10;
    a=1'b1;b=1'b0;
    #10;
    a=1'b0;b=1'b0;
    #10;
    $finish;
end
endmodule