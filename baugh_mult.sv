module baugh_mult (a,b,p);

input [3:0] a,b;
output [7:0] p;

suppy1 one;

wire w1,w2,w3,w4,w5,w6,w7,w8,,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23;

assign p[0] = a[0] &b[0];

 half_adder HA1(a[1]&b[0], a[0]&b[1], p[1], w1);
 half_adder HA2(a[2]&b[0], a[1]&b[1], w2, w3);
 half_adder HA3( ~a[3]&b[0], a[2]&b[1], w4, w5);
 
 full_adder FA1(w2,w1,a[0]&b[2],p[2], w6);
 full_adder FA1(w4,w3,a[1]&b[2],w7,w8);
 full_adder FA1(w5,a[2]&b[2],~(a[3]&b[1]),w9,w10);
 
 full_adder FA4(w6,w7,~(a[0]&b[3]),p[3], w11);
 full_adder FA5(w8,w9,~(a[1]&b[3]),w12, w13);
 full_adder FA6(w10,~(a[2]&b[3]),~(a[3]&b[2]), w14,w15);
 
 full_adder FA7(one,w11,w12,p[4], w16);
 full_adder HA4(w13,w14,w17, w18);
 full_adder HA5(a[3]&b[3], w[15] , w[19], w[20]);
 
 half_adder HA6(w16,w17,p[5] , w21);
 half_adder HA7(w18,w19,w22 , w23);
 
 half_adder HA8(w21,w22,p[7],p[6]);
 
 endmodule
 
 module half_adder (x, y, s, cout);
 input x,y;
 output s, cout;
 assign s = x^y^cin;
 assign cout = (x&y)|(y&cin)|(x&cin);
 
 module full_adder (x,y,cin,s,cout);
 input x,y,cin;
 output s,cout;
 assign s=x^y;
 assign cout = x&y;
 endmodule
 
 
