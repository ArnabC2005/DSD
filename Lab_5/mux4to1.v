module mux4to1(w1,w2,w3,w4,s1,s2,f);
input w1,w2,w3,w4,s1,s2;
output f;
reg f;

always @(w1 or w2 or w3 or w4 or s1 or s2)
begin
	if(s1==0 && s2==0) 
	begin
	f=w1;
	end
	
	if(s1==0 && s2==1)
	begin
	f=w2;
	end
	
	if(s1==1 && s2==0)
	begin
	f=w3;
	end
	
	if(s1==1 && s2==1)
	begin
	f=w4;
	end
end
endmodule
	

