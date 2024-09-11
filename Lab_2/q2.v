module q2(a,b,cin,s,co);
input a,b,cin;
output s,co;

assign s=(a^b^cin);
assign co=(b&(a^cin))|(a&cin);

endmodule

