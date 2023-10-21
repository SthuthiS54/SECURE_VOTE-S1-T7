module comparator(input [3:0]A,input [3:0]B,output e);
wire [3:0]x;
assign x[0]=~(A[0]^B[0]);
assign x[1]=~(A[1]^B[1]);
assign x[2]=~(A[2]^B[2]);
assign x[3]=~(A[3]^B[3]);
assign e=x[0]&x[1]&x[2]&x[3];
endmodule
 
module password(input [3:0]A1,input [3:0]A2,input [3:0]A3,input [3:0]A4,input [3:0]B1,input [3:0]B2,input [3:0]B3,input [3:0]B4,output o);
wire e1,e2,e3,e4;
comparator C1(A1,B1,e1);
comparator C2(A2,B2,e2);
comparator C3(A3,B3,e3);
comparator C4(A4,B4,e4);
assign o= e1 & e2 & e3 & e4;
endmodule

module voting_machine (
    input [3:0]A1,input [3:0]A2,input [3:0]A3,input [3:0]A4,input [3:0]B1,input [3:0]B2,input [3:0]B3,input [3:0]B4,output o,
    input wire clk1,
    input wire clk2,
    input wire clk3,
    input wire clk4,
    input wire [3:0]count1,
    input wire [3:0]count2,
    input wire [3:0]count3,
    input wire [3:0]count4,
    output reg [3:0] counter1,
    output reg [3:0] counter2,
    output reg [3:0] counter3,
    output reg [3:0] counter4,
    input wire display,
    output reg P,
    output reg Q,
    output reg R,
    output reg S
);
password p1(A1,A2,A3,A4,B1,B2,B3,B4,o);
always@(clk1==0 & clk2==0 & clk3==0 & clk4==0 &o==1'b1 & display==0)
begin
    counter1 <= 4'b0000;
    counter2 <= 4'b0000;
    counter3 <= 4'b0000;
    counter4 <= 4'b0000;
end
always@(clk1==0 & clk2==0 & clk3==0 & clk4==0 &o==1'b0 & display==0)
begin
    counter1 <= 4'b0000;
    counter2 <= 4'b0000;
    counter3 <= 4'b0000;
    counter4 <= 4'b0000;
end
always @(posedge clk1 & clk2==0 &clk3==0 &clk4==0 &o==1'b0 & display==0 ) begin
    counter1 <= count1;
    counter2 <= count2;
    counter3 <= count3;
    counter4 <= count4;
end
always @(posedge clk2 & clk1==0 &clk3==0 &clk4==0 &o==1'b0 & display==0) begin
    counter2 <= count2;
    counter1 <= count1;
    counter3 <= count3;
    counter4 <= count4;
end
always @(posedge clk3 &clk2==0 &clk1==0 &clk4==0 &o==1'b0 & display==0) begin
    counter3 <= count3;
    counter1 <= count1;
    counter4 <= count4;
    counter2 <= count2;
end
always @(posedge clk4 & clk1==0 &clk3==0 &clk2==0 &o==1'b0 & display==0) begin
    counter4 <= count4;
     counter1 <= count1;
     counter2 <= count2;
     counter3 <= count3;
end
always @(posedge clk1 & clk2==0 &clk3==0 &clk4==0 &o==1'b1 & display==0 ) begin
    counter1 <= count1 + 4'b0001;
    counter2 <= count2;
    counter3 <= count3;
    counter4 <= count4;
end
always @(posedge clk2 & clk1==0 &clk3==0 &clk4==0 &o==1'b1 & display==0) begin
    counter2 <= count2 + 4'b0001;
    counter1 <= count1;
    counter3 <= count3;
    counter4 <= count4;
end
always @(posedge clk3 &clk2==0 &clk1==0 &clk4==0 &o==1'b1 & display==0) begin
    counter3 <= count3 + 4'b0001;
    counter1 <= count1;
    counter4 <= count4;
    counter2 <= count2;
end
always @(posedge clk4 & clk1==0 &clk3==0 &clk2==0 &o==1'b1 & display==0) begin
    counter4 <= count4 + 4'b0001;
     counter1 <= count1;
     counter2 <= count2;
     counter3 <= count3;
end
always @(display==1'b1) begin
     if (counter1 >= counter2 && counter1 >= counter3 && counter1 >= counter4)
                P <= 1'b1;
            else
                P <= 1'b0;

            if (counter2 >= counter1 && counter2 >= counter3 && counter2 >= counter4)
                Q <= 1'b1;
            else
                Q <= 1'b0;

            if (counter3 >= counter1 && counter3 >= counter2 && counter3 >= counter4)
                R <= 1'b1;
            else
                R <= 1'b0;

            if (counter4 >= counter1 && counter4 >= counter2 && counter4 >= counter3)
                S <= 1'b1;
            else
                S <= 1'b0;
end
endmodule
