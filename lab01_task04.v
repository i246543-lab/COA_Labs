module DataFlow(a,b,c);
input a;
input b;
wire t1;
wire t2;
wire t3;
wire t4;
output c;
assign t1= ~a;
assign t3= t1 & b;
assign t2= ~b;
assign t4= a & t2;
assign c= t3 | t4;
endmodule
module GateLevel(a,b,c);
input a;
input b;
wire t1;
wire t2;
wire t3;
wire t4;
output c;
not n1(t1,a);
and a1(t3, t1,b);
not n2(t2, b);
and a2(t4, t2, a);
or o1(c, t3, t4);
endmodule
module testbench();
reg x;
reg y;
wire z;
GateLevel uut(x,y,z); //unit under test
initial
begin
x=0; y=0;
#50
x=0; y=1;
#50
x=1; y=0;
#50
x=1; y=1;
end
endmodule
