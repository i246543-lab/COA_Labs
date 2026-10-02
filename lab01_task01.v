//And Gate
module AndGate(a,b,c); 
input a; 
input b; 
output c; 
and a1(c,a,b); 
endmodule 
//Or Gate: 
module OrGate(a,b,c); 
input a; 
input b; 
output c; 
or a1(c,a,b); 
endmodule 
//Not Gate: 
module NotGate(a,b); 
input a; 
output b; 
not a1(b,a); 
endmodule 
module notgate(); 
reg x; 
wire z; 
NotGate uut(x,z); 
// LogicGates uut(.a(x),.b(z)); 
initial  
begin 
x=0; 
#50 
x=1; 
end 
endmodule 
//Nand Gate: 
module NandGate(a,b,c); 
input a; 
input b; 
output c; 
nand a1(c,a,b); 
endmodule 
//Nor Gate: 
module NorGate(a,b,c);
input a; 
input b; 
output c; 
nor a1(c,a,b); 
endmodule 
//Xor Gate: 
module XorGate(a,b,c); 
input a; 
input b; 
output c; 
xor a1(c,a,b); 
endmodule 
//Xnor Gate: 
module XnorGate(a,b,c); 
input a; 
input b; 
output c; 
xnor a1(c,a,b); 
endmodule 
//Common testbench: 
module testbench(); 
reg x; 
reg y;  
wire z; 
NandGate uut(x,y,z); 
// LogicGates uut(.a(x),.b(y),.c(z)); 
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