module carry_lookahead_adder(input [3:0] A, B, 
                             input CIN,
                             output [3:0] SUM,
                             output COUT);
    
    wire [3:0] P, G, C;
    
    assign P = A ^ B;
    assign G = A & B;
    
    assign C[0] = G[0] | (P[0] & CIN);
    assign SUM[0] = P[0] ^ CIN;
    
    assign C[1] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & CIN);
    assign SUM[1] = P[1] ^ C[0];
    
    assign C[2] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & CIN);
    assign SUM[2] = P[2] ^ C[1];
    
    assign C[3] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & CIN);
    assign SUM[3] = P[3] ^ C[2];

    assign COUT = C[3];
    
endmodule
