module voting_machine_tb;
reg clk1, clk2, clk3, clk4,display;
reg [3:0] count1,A1,A2,A3,A4,B1,B2,B3,B4;
reg [3:0] count2;
reg [3:0] count3;
reg [3:0] count4;
wire o,P,Q,R,S;
wire [3:0] counter1;
wire [3:0] counter2;
wire [3:0] counter3;
wire [3:0] counter4;
// Instantiate the voting_machine module
voting_machine uut (.A1(A1),.A2(A2),.A3(A3),.A4(A4),.B1(B1),.B2(B2),.B3(B3),.B4(B4),.o(o),
    .clk1(clk1),
    .clk2(clk2),
    .clk3(clk3),
    .clk4(clk4),
    .count1(count1),
    .count2(count2),
    .count3(count3),
    .count4(count4),
    .counter1(counter1),
    .counter2(counter2),
    .counter3(counter3),
    .counter4(counter4),
    .display(display),
    .P(P),
    .Q(Q),
    .R(R),
    .S(S)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, voting_machine_tb);
    clk1 = 1'b0;
    clk2 = 1'b0;
    clk3 = 1'b0;
    clk4 = 1'b0;
    display=1'b0;
    A1=4'd2;A2=4'd9;A3=4'd8;A4=4'd7;B1=4'd2;B2=4'd9;B3=4'd8;B4=4'd7;
    count1<=4'b0000;
    count2<=4'b0000;
    count3<=4'b0000;
    count4<=4'b0000;
    $display("-----------------------------------------------------------------------------------------------------------------------------------------------------");
    $display("| INPUT PASSWORD | VALID PASSWORD | ELIGIBILITY | BUTTON-A |   COUNT-A   | BUTTON-B |   COUNT-B   | BUTTON-C |   COUNT-C   | BUTTON-D |   COUNT-D   |");
    $display("|        A       |        B       |   match(o)  |    clk1  |   counter1  |   clk2   |   counter2  |   clk3   |   counter3  |   clk4   |   counter4  |");
    $display("-----------------------------------------------------------------------------------------------------------------------------------------------------");
    //$monitor("%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d", $time, counter1,counter2, clk2,counter3, clk3,counter4, clk4);
    repeat (2) begin
        $monitor("|  %d %d %d %d   |  %d %d %d %d   |       %b     |    %d     |      %d     |     %d    |     %d      |    %d     |     %d      |     %d    |     %d      |",A1,A2,A3,A4,B1,B2,B3,B4,o, clk1,counter1,clk2,counter2, clk3, counter3, clk4,counter4);
        #10 A1=4'd2;A2=4'd9;A3=4'd8;A4=4'd7;B1=4'd2;B2=4'd9;B3=4'd8;B4=4'd7;clk1=1'b1; clk2=1'b0; clk3=1'b0; clk4=1'b0;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4;
        #10 A1=4'd8;A2=4'd4;A3=4'd2;A4=4'd1;B1=4'd8;B2=4'd2;B3=4'd4;B4=4'd0;clk1=1'b0; clk2=1'b0; clk3=1'b1; clk4=1'b0;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4; 
        #10 A1=4'd2;A2=4'd3;A3=4'd4;A4=4'd5;B1=4'd2;B2=4'd3;B3=4'd4;B4=4'd5;clk1=1'b0; clk2=1'b0; clk3=1'b0; clk4=1'b1;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4; 
        #10 A1=4'd2;A2=4'd9;A3=4'd8;A4=4'd7;B1=4'd2;B2=4'd9;B3=4'd8;B4=4'd7;clk1=1'b0; clk2=1'b0; clk3=1'b1; clk4=1'b0;  
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4; 
        #10 A1=4'd3;A2=4'd2;A3=4'd1;A4=4'd7;B1=4'd2;B2=4'd9;B3=4'd8;B4=4'd7;clk1=1'b0; clk2=1'b1; clk3=1'b0; clk4=1'b0;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4;
        #10 A1=4'd2;A2=4'd9;A3=4'd8;A4=4'd7;B1=4'd3;B2=4'd5;B3=4'd9;B4=4'd7;clk1=1'b1; clk2=1'b0; clk3=1'b0; clk4=1'b0;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4;
        #10 A1=4'd8;A2=4'd4;A3=4'd2;A4=4'd1;B1=4'd8;B2=4'd4;B3=4'd2;B4=4'd1;clk1=1'b0; clk2=1'b0; clk3=1'b1; clk4=1'b0;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4; 
        #10 A1=4'd2;A2=4'd3;A3=4'd4;A4=4'd5;B1=4'd8;B2=4'd7;B3=4'd4;B4=4'd5;clk1=1'b0; clk2=1'b0; clk3=1'b0; clk4=1'b1;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4; 
        #10 A1=4'd2;A2=4'd9;A3=4'd8;A4=4'd7;B1=4'd3;B2=4'd6;B3=4'd8;B4=4'd7;clk1=1'b0; clk2=1'b0; clk3=1'b1; clk4=1'b0;  
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4; 
        #10 A1=4'd1;A2=4'd1;A3=4'd2;A4=4'd2;B1=4'd1;B2=4'd1;B3=4'd2;B4=4'd2;clk1=1'b0; clk2=1'b1; clk3=1'b0; clk4=1'b0;
        #10 count1<=counter1;
        #10 count2<=counter2;
        #10 count3<=counter3;
        #10 count4<=counter4;      
    end
    #1000;
    display=1'b1;
    $display("-----------------------------------------------------------------------------------------------------------------------------------------------------");
    $display("WINNER:");
    $display("A   B    C    D");
    $monitor("%b   %b    %b    %b",P,Q,R,S);
    #10 $display("-----------------------------------------------------------------------------------------------------------------------------------------------------");
end
endmodule
