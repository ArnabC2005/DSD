module ex1(x1,x2,x3,x4,f);
input x1,x2,x3,x4;
output f;

assign g=(~x1&x2)|(x1&(~x2));
endmodule

