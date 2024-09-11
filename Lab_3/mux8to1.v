module mux8to1 (
    input wire [7:0] d,      
    input wire s0,           
    input wire s1,           
    input wire s2,           
    output reg f            
);


always @(d or s0 or s1 or s2)
begin
case ({s0,s1,s2})

	3'b000: 
	begin 
	f=d[0];
	end
	
	3'b001:
	begin
	f = d[1];  
	end
        3'b010: 
        
        begin
        f = d[2];  
        end 
        
        3'b011: 
        
        begin
        f = d[3];  
        end
        
        3'b100: 
        begin
        f = d[4];  
        end
        3'b101: 
        
        begin
        f = d[5];  
        end
        
        3'b110: 
        begin
        f = d[6]; 
        end
        
        
        3'b111: 
        begin
        f = d[7];
        end
        
        endcase
   end
   
   endmodule
	

