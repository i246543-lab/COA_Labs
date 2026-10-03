module DataFlow(a1,a2,a3,a4,b1,b2,b3,b4);
input a1,a2,a3,a4;
output b1,b2,b3,b4;
assign b1= ~a1;
assign b2= ~a2;
assign b3= ~a3;
assign b4= ~a4;
endmodule
module GateLevel(a1,a2,a3,a4,b1,b2,b3,b4); 
input a1,a2,a3,a4; 
output b1,b2,b3,b4; 
not n1(b1,a1); 
not n2(b2,a2); 
not n3(b3,a3); 
not n4(b4,a4); 
endmodule
module testbench();
reg a,b,c,d;
wire w,x,y,z;
GateLevel uut(a,b,c,d,w,x,y,z);
initial
begin
a=0; b=0; c=0; d=0;
#50
a=0; b=0; c=0; d=1;
#50
a=0; b=0; c=1; d=0;
#50
a=0; b=0; c=1; d=1;
#50
a=0; b=1; c=0; d=0;
#50
a=0; b=1; c=0; d=1;
#50
a=0; b=1; c=1; d=0;
#50
a=0; b=1; c=1; d=1;
#50
a=1; b=0; c=0; d=0;
#50
a=1; b=0; c=0; d=1;
#50
a=1; b=0; c=1; d=0;
#50
a=1; b=0; c=1; d=1;
#50
a=1; b=1; c=0; d=0;
#50
a=1; b=1; c=0; d=1;
#50
a=1; b=1; c=1; d=0;
#50
a=1; b=1; c=1; d=1;
end
endmodule
