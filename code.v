module dog4(clk,rst,row,col,trash,keyleft,keyright,keyup,keydown,mode,time10,time1);

 

input clk,rst,keyleft,keyright,keyup,keydown;
input [3:0]mode;


output[7:0] row,col;
output[7:0]trash;
output[6:0]time10,time1;

reg [7:0]row,col;

reg [31:0] count;
reg [15:0] count1;
reg[7:0] trash;
reg[2:0]test;
reg[7:0]nowr,nowc;
reg[7:0] temp;
reg[25:0]delay;
reg flag;
reg[7:0]col7,col6,col5,col4,col3,col2,col1,col0;
reg win,lose;
reg [6:0]time10,time1;
integer timeless;
 


always@(posedge clk)

begin
if(rst==0)
begin
	timeless=30;
	count1=16'd0;
	row=8'b11111111;
	count=32'd0;
	lose=0;
	if(mode==4'b0000)
	begin
		trash=8'b00000000;
		nowr=8'b11110111;
		nowc=8'b00000100;
		flag=1'b0;
		delay=26'd0;
		col7=8'b10111111;
		col6=8'b10011011;
		col5=8'b11010001;
		col4=8'b11011101;
		col3=8'b10000001;
		col2=8'b10111011;
		col1=8'b10010001;
		col0=8'b11111111;
		win=0;
	end
	else if(mode==4'b0001)
	begin
		trash=8'b00000000;
		nowr=8'b11011111;
		nowc=8'b00010000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b10110001;
		col5=8'b10000101;
		col4=8'b11101101;
		col3=8'b10000011;
		col2=8'b11111001;
		col1=8'b10000011;
		col0=8'b10111111;
		win=0;
	end
	else if(mode==4'b0010)
	begin
		trash=8'b00000000;
		nowr=8'b11111101;
		nowc=8'b00000010;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b00000001;
		col5=8'b11111101;
		col4=8'b10100101;
		col3=8'b10100001;
		col2=8'b10111101;
		col1=8'b10000001;
		col0=8'b11111111;
	end
	else if(mode==4'b0011)
	begin
		trash=8'b00000000;
		nowr=8'b11110111;
		nowc=8'b00010000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b11010000;
		col5=8'b10000101;
		col4=8'b10101111;
		col3=8'b10000001;
		col2=8'b10111101;
		col1=8'b10001001;
		col0=8'b11111111;
		win=0;
	end
	else if(mode==4'b0100)
	begin
		trash=8'b00000000;
		nowr=8'b11101111;
		nowc=8'b01000000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b10011011;
		col5=8'b10100001;
		col4=8'b10001101;
		col3=8'b10011001;
		col2=8'b10101011;
		col1=8'b10001001;
		col0=8'b11111011;
		win=0;
	end
	else if(mode==4'b0101)
	begin
		trash=8'b00000000;
		nowr=8'b11011111;
		nowc=8'b00000100;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b10101011;
		col5=8'b10000001;
		col4=8'b10101011;
		col3=8'b11010001;
		col2=8'b10001011;
		col1=8'b10100001;
		col0=8'b11111011;
		win=0;
	end
	else if(mode==4'b0110)
	begin
		trash=8'b00000000;
		nowr=8'b11111011;
		nowc=8'b00001000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11110111;
		col6=8'b10100001;
		col5=8'b10000101;
		col4=8'b11110001;
		col3=8'b10011011;
		col2=8'b10110001;
		col1=8'b10000101;
		col0=8'b11111111;
		win=0;
	end
	else if(mode==4'b0111)
	begin
		trash=8'b00000000;
		nowr=8'b11110111;
		nowc=8'b01000000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b10100011;
		col5=8'b10001101;
		col4=8'b10110001;
		col3=8'b10010111;
		col2=8'b10100100;
		col1=8'b10000001;
		col0=8'b11111111;
		win=0;
	end
	else if(mode==4'b1000)
	begin
		trash=8'b00000000;
		nowr=8'b11111011;
		nowc=8'b00100000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b10000011;
		col5=8'b10111001;
		col4=8'b10100101;
		col3=8'b10101101;
		col2=8'b10000101;
		col1=8'b11010001;
		col0=8'b11111101;
		win=0;
	end
	else if(mode==4'b1001)
	begin
		trash=8'b00000000;
		nowr=8'b11110111;
		nowc=8'b00100000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11110111;
		col6=8'b11010011;
		col5=8'b10001001;
		col4=8'b10010101;
		col3=8'b11000001;
		col2=8'b10011101;
		col1=8'b11010001;
		col0=8'b11111111;
		win=0;
	end
	else if(mode==4'b1010)
	begin
		trash=8'b00000000;
		nowr=8'b11011111;
		nowc=8'b00010000;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b10101000;
		col5=8'b10001011;
		col4=8'b10100011;
		col3=8'b10010001;
		col2=8'b10110101;
		col1=8'b10000101;
		col0=8'b11111111;
		win=0;
	end
	else if(mode==4'b1011)
	begin
		trash=8'b00000000;
		nowr=8'b11101111;
		nowc=8'b00000100;
		flag=1'b0;
		delay=26'd0;
		col7=8'b11111111;
		col6=8'b11011001;
		col5=8'b10000101;
		col4=8'b10110001;
		col3=8'b11101001;
		col2=8'b10000011;
		col1=8'b10101001;
		col0=8'b10111111;
		win=0;
	end
end


else
begin
	if(count == 32'd50000000)
	begin
		count=32'd0;
		nowc=temp;
		if(win==0)
		begin
			timeless=timeless-1;
		end
	end
	count=count + 32'd1;
	count1=count1+16'd1;

	if(count1==16'd600)
	begin
		count1=16'd0;
		test=test+3'd1;
	end


case({test})

	3'b000:
	begin row=8'b01111111;col=col7;
	if(win==1)begin trash=8'b00000000;  end
 	end

	3'b001:
	begin row=8'b10111111;col=col6;
	if(win==1)begin trash=8'b00000000;  end
	end

	3'b010:
	begin row=8'b11011111;col=col5;
	if(win==1)begin trash=8'b00000001;  end
	end

	3'b011:
	begin row=8'b11101111;col=col4;
	if(win==1)begin trash=8'b00000010;  end
	end

	3'b100:begin row=8'b11110111;col=col3;
	if(win==1)begin trash=8'b00000100;  end
	end

	3'b101:begin row=8'b11111011;col=col2;
	if(win==1)begin trash=8'b10001000;  end
	end

	3'b110:begin row=8'b11111101;col=col1;
	if(win==1)begin trash=8'b01010000;  end
	end

	3'b111:begin row=8'b11111110;col=col0;
	if(win==1)begin trash=8'b00100000;  end
	end

endcase


if(row==nowr)begin col=col+nowc; end


if(count<32'd750000000&&count>32'd25000000)begin nowc=8'b00000000; end
else begin temp=nowc; end


if(lose==0)
begin
if((!keyleft)&&(!flag)) flag=1'b1;
else if(flag)
begin
delay = delay+1'b1;
if(delay==26'b10101100000000000000000000)
begin
flag = 1'b0;
case({nowc})
8'b00000010: 
begin 
	case({nowr})
	8'b10111111:
	if(col6[2]==0)nowc=8'b00000100; 
	8'b11011111:
	if(col5[2]==0)nowc=8'b00000100; 
	8'b11101111:
	if(col4[2]==0)nowc=8'b00000100; 	
	8'b11110111:	
	if(col3[2]==0)nowc=8'b00000100; 
	8'b11111011:
	if(col2[2]==0)nowc=8'b00000100; 
	8'b11111101:
	if(col1[2]==0)nowc=8'b00000100; 
	endcase
end
8'b00000100: 
begin 
case({nowr})
8'b10111111:
if(col6[3]==0)nowc=8'b00001000; 
8'b11011111:
if(col5[3]==0)nowc=8'b00001000; 
8'b11101111:
if(col4[3]==0)nowc=8'b00001000; 
8'b11110111:
if(col3[3]==0)nowc=8'b00001000; 
8'b11111011:
if(col2[3]==0)nowc=8'b00001000; 
8'b11111101:
if(col1[3]==0)nowc=8'b00001000; 
endcase
end
8'b00001000:
begin 
case({nowr})
8'b10111111:
if(col6[4]==0)nowc=8'b00010000; 
8'b11011111:
if(col5[4]==0)nowc=8'b00010000; 
8'b11101111:
if(col4[4]==0)nowc=8'b00010000; 
8'b11110111:
if(col3[4]==0)nowc=8'b00010000; 
8'b11111011:
if(col2[4]==0)nowc=8'b00010000; 
8'b11111101:
if(col1[4]==0)nowc=8'b00010000; 
endcase
end
8'b00010000:
begin 
case({nowr})
8'b10111111:
if(col6[5]==0)nowc=8'b00100000; 
8'b11011111:
if(col5[5]==0)nowc=8'b00100000; 
8'b11101111:
if(col4[5]==0)nowc=8'b00100000; 
8'b11110111:
if(col3[5]==0)nowc=8'b00100000; 
8'b11111011:
if(col2[5]==0)nowc=8'b00100000; 
8'b11111101:
if(col1[5]==0)nowc=8'b00100000; 
endcase
end 
8'b00100000: 
begin 
case({nowr})
8'b10111111:
if(col6[6]==0)nowc=8'b01000000; 
8'b11011111:
if(col5[6]==0)nowc=8'b01000000; 
8'b11101111:
if(col4[6]==0)nowc=8'b01000000; 
8'b11110111:
if(col3[6]==0)nowc=8'b01000000; 
8'b11111011:
if(col2[6]==0)nowc=8'b01000000; 
8'b11111101:
if(col1[6]==0)nowc=8'b01000000; 
endcase
end
8'b01000000: 
begin 
case({nowr})
8'b10111111:
if(col6[7]==0)nowc=8'b10000000; 
8'b11011111:
if(col5[7]==0)nowc=8'b10000000; 
8'b11101111:
if(col4[7]==0)nowc=8'b10000000; 
8'b11110111:
if(col3[7]==0)nowc=8'b10000000; 
8'b11111011:
if(col2[7]==0)nowc=8'b10000000; 
8'b11111101:
if(col1[7]==0)nowc=8'b10000000; 
endcase
end
endcase
delay=26'd0;
end
end

end

if(lose==0)
 begin
if((!keyright)&&(!flag)) flag=1'b1;
else if(flag)
begin
delay = delay+1'b1;
if(delay==26'b10101100000000000000000000)
begin
flag = 1'b0;
case({nowc})
8'b00000010: 
begin 
case({nowr})
8'b10111111:
if(col6[0]==0)nowc=8'b00000001;
8'b11011111:
if(col5[0]==0)nowc=8'b00000001; 
8'b11101111:
if(col4[0]==0)nowc=8'b00000001;
8'b11110111:
if(col3[0]==0)nowc=8'b00000001;
8'b11111011:
if(col2[0]==0)nowc=8'b00000001; 
8'b11111101:
if(col1[0]==0)nowc=8'b00000001;
endcase
end
8'b00000100: 
begin 
case({nowr})
8'b10111111:
if(col6[1]==0)nowc=8'b00000010;
8'b11011111:
if(col5[1]==0)nowc=8'b00000010;
8'b11101111:
if(col4[1]==0)nowc=8'b00000010;
8'b11110111:
if(col3[1]==0)nowc=8'b00000010;
8'b11111011:
if(col2[1]==0)nowc=8'b00000010;
8'b11111101:
if(col1[1]==0)nowc=8'b00000010;
endcase
end
8'b00001000:
begin 
case({nowr})
8'b10111111:
if(col6[2]==0)nowc=8'b00000100;
8'b11011111:
if(col5[2]==0)nowc=8'b00000100;
8'b11101111:
if(col4[2]==0)nowc=8'b00000100;
8'b11110111:
if(col3[2]==0)nowc=8'b00000100;
8'b11111011:
if(col2[2]==0)nowc=8'b00000100;
8'b11111101:
if(col1[2]==0)nowc=8'b00000100;
endcase
end
8'b00010000: 
begin 
case({nowr})
8'b10111111:
if(col6[3]==0)nowc=8'b00001000;
8'b11011111:
if(col5[3]==0)nowc=8'b00001000;
8'b11101111:
if(col4[3]==0)nowc=8'b00001000;
8'b11110111:
if(col3[3]==0)nowc=8'b00001000;
8'b11111011:
if(col2[3]==0)nowc=8'b00001000;
8'b11111101:
if(col1[3]==0)nowc=8'b00001000;
endcase
end
8'b00100000: 
begin 
case({nowr})
8'b10111111:
if(col6[4]==0)nowc=8'b00010000;
8'b11011111:
if(col5[4]==0)nowc=8'b00010000;
8'b11101111:
if(col4[4]==0)nowc=8'b00010000;
8'b11110111:
if(col3[4]==0)nowc=8'b00010000;
8'b11111011:
if(col2[4]==0)nowc=8'b00010000;
8'b11111101:
if(col1[4]==0)nowc=8'b00010000;
endcase
end
8'b01000000: 
begin 
case({nowr})
8'b10111111:
if(col6[5]==0)nowc=8'b00100000;
8'b11011111:
if(col5[5]==0)nowc=8'b00100000;
8'b11101111:
if(col4[5]==0)nowc=8'b00100000;
8'b11110111:
if(col3[5]==0)nowc=8'b00100000;
8'b11111011:
if(col2[5]==0)nowc=8'b00100000;
8'b11111101:
if(col1[5]==0)nowc=8'b00100000;
endcase
end
endcase
delay=26'd0;
end

end
end

if(lose==0)
begin
if((!keyup)&&(!flag)) flag=1'b1;
else if(flag)
begin
delay = delay+1'b1;
if(delay==26'b10101100000000000000000000)
begin
flag = 1'b0;
case({nowr})
8'b11111101: 
begin 
case({nowc})
8'b00000010:
if(col2[1]==0)nowr=8'b11111011;
8'b00000100:
if(col2[2]==0)nowr=8'b11111011;
8'b00001000:
if(col2[3]==0)nowr=8'b11111011;
8'b00010000:
if(col2[4]==0)nowr=8'b11111011;
8'b00100000:
if(col2[5]==0)nowr=8'b11111011;
8'b01000000:
if(col2[6]==0)nowr=8'b11111011;
endcase
end
8'b11111011: 
begin 
case({nowc})
8'b00000010:
if(col3[1]==0)nowr=8'b11110111;
8'b00000100:
if(col3[2]==0)nowr=8'b11110111;
8'b00001000:
if(col3[3]==0)nowr=8'b11110111;
8'b00010000:
if(col3[4]==0)nowr=8'b11110111;
8'b00100000:
if(col3[5]==0)nowr=8'b11110111;
8'b01000000:
if(col3[6]==0)nowr=8'b11110111;
endcase
end
8'b11110111: 
begin 
case({nowc})
8'b00000010:
if(col4[1]==0)nowr=8'b11101111;
8'b00000100:
if(col4[2]==0)nowr=8'b11101111;
8'b00001000:
if(col4[3]==0)nowr=8'b11101111;
8'b00010000:
if(col4[4]==0)nowr=8'b11101111;
8'b00100000:
if(col4[5]==0)nowr=8'b11101111;
8'b01000000:
if(col4[6]==0)nowr=8'b11101111;
endcase
end
8'b11101111: 
begin 
case({nowc})
8'b00000010:
if(col5[1]==0)nowr=8'b11011111;
8'b00000100:
if(col5[2]==0)nowr=8'b11011111;
8'b00001000:
if(col5[3]==0)nowr=8'b11011111;
8'b00010000:
if(col5[4]==0)nowr=8'b11011111;
8'b00100000:
if(col5[5]==0)nowr=8'b11011111;
8'b01000000:
if(col5[6]==0)nowr=8'b11011111;
endcase
end
8'b11011111: 
begin 
case({nowc})
8'b00000010:
if(col6[1]==0)nowr=8'b10111111;
8'b00000100:
if(col6[2]==0)nowr=8'b10111111;
8'b00001000:
if(col6[3]==0)nowr=8'b10111111;
8'b00010000:
if(col6[4]==0)nowr=8'b10111111;
8'b00100000:
if(col6[5]==0)nowr=8'b10111111;
8'b01000000:
if(col6[6]==0)nowr=8'b10111111;
endcase
end
8'b10111111: 
begin 
case({nowc})
8'b00000010:
if(col7[1]==0)nowr=8'b01111111;
8'b00000100:
if(col7[2]==0)nowr=8'b01111111;
8'b00001000:
if(col7[3]==0)nowr=8'b01111111;
8'b00010000:
if(col7[4]==0)nowr=8'b01111111;
8'b00100000:
if(col7[5]==0)nowr=8'b01111111;
8'b01000000:
if(col7[6]==0)nowr=8'b01111111;
endcase
end
endcase
delay=26'd0;
end

end


end


if(lose==0)
begin
if((!keydown)&&(!flag)) flag=1'b1;
else if(flag)
begin
delay = delay+1'b1;
if(delay==26'b10101100000000000000000000)
begin
flag = 1'b0;

case({nowr})
8'b11111101: 
begin
case({nowc})
8'b00000010:
if(col0[1]==0)nowr=8'b11111110;
8'b00000100:
if(col0[2]==0)nowr=8'b11111110;
8'b00001000:
if(col0[3]==0)nowr=8'b11111110;
8'b00010000:
if(col0[4]==0)nowr=8'b11111110;
8'b00100000:
if(col0[5]==0)nowr=8'b11111110;
8'b01000000:
if(col0[6]==0)nowr=8'b11111110;
endcase
end
8'b11111011: 
begin
case({nowc})
8'b00000010:
if(col1[1]==0)nowr=8'b11111101;
8'b00000100:
if(col1[2]==0)nowr=8'b11111101;
8'b00001000:
if(col1[3]==0)nowr=8'b11111101;
8'b00010000:
if(col1[4]==0)nowr=8'b11111101;
8'b00100000:
if(col1[5]==0)nowr=8'b11111101;
8'b01000000:
if(col1[6]==0)nowr=8'b11111101;
endcase
end
8'b11110111: 
begin
case({nowc})
8'b00000010:
if(col2[1]==0)nowr=8'b11111011;
8'b00000100:
if(col2[2]==0)nowr=8'b11111011;
8'b00001000:
if(col2[3]==0)nowr=8'b11111011;
8'b00010000:
if(col2[4]==0)nowr=8'b11111011;
8'b00100000:
if(col2[5]==0)nowr=8'b11111011;
8'b01000000:
if(col2[6]==0)nowr=8'b11111011;
endcase
end
8'b11101111: 
begin
case({nowc})
8'b00000010:
if(col3[1]==0)nowr=8'b11110111;
8'b00000100:
if(col3[2]==0)nowr=8'b11110111;
8'b00001000:
if(col3[3]==0)nowr=8'b11110111;
8'b00010000:
if(col3[4]==0)nowr=8'b11110111;
8'b00100000:
if(col3[5]==0)nowr=8'b11110111;
8'b01000000:
if(col3[6]==0)nowr=8'b11110111;
endcase
end
8'b11011111: 
begin
case({nowc})
8'b00000010:
if(col4[1]==0)nowr=8'b11101111;
8'b00000100:
if(col4[2]==0)nowr=8'b11101111;
8'b00001000:
if(col4[3]==0)nowr=8'b11101111;
8'b00010000:
if(col4[4]==0)nowr=8'b11101111;
8'b00100000:
if(col4[5]==0)nowr=8'b11101111;
8'b01000000:
if(col4[6]==0)nowr=8'b11101111;
endcase
end
8'b10111111: 
begin
case({nowc})
8'b00000010:
if(col5[1]==0)nowr=8'b11011111;
8'b00000100:
if(col5[2]==0)nowr=8'b11011111;
8'b00001000:
if(col5[3]==0)nowr=8'b11011111;
8'b00010000:
if(col5[4]==0)nowr=8'b11011111;
8'b00100000:
if(col5[5]==0)nowr=8'b11011111;
8'b01000000:
if(col5[6]==0)nowr=8'b11011111;
endcase
end
endcase
delay=26'd0;
end

end


end

if(count<32'd750000000&&count>32'd25000000&&win==0)
begin
case({temp})

8'b01000000:begin col=col&8'b11100000;end
8'b00100000:begin col=col&8'b01110000;end 
8'b00010000:begin col=col&8'b00111000;end
8'b00001000:begin col=col&8'b00011100;end
8'b00000100:begin col=col&8'b00001110;end
8'b00000010:begin col=col&8'b00000111;end
endcase
end
else
begin
case({nowc})

8'b01000000:begin if(win==0)begin col=col&8'b11100000;end end
8'b00100000:begin if(win==0)begin col=col&8'b01110000;end end 
8'b00010000:begin if(win==0)begin col=col&8'b00111000;end end
8'b00001000:begin if(win==0)begin col=col&8'b00011100;end end
8'b00000100:begin if(win==0)begin col=col&8'b00001110;end end
8'b00000010:begin if(win==0)begin col=col&8'b00000111;end end
endcase
end

case({nowr})
8'b10111111:begin if(row!=8'b01111111&&row!=8'b10111111&&row!=8'b11011111&&win==0)row=8'b11111111;end
8'b11011111:begin if(row!=8'b11101111&&row!=8'b10111111&&row!=8'b11011111&&win==0)row=8'b11111111;end
8'b11101111:begin if(row!=8'b11101111&&row!=8'b11110111&&row!=8'b11011111&&win==0)row=8'b11111111;end
8'b11110111:begin if(row!=8'b11101111&&row!=8'b11110111&&row!=8'b11111011&&win==0)row=8'b11111111;end
8'b11111011:begin if(row!=8'b11110111&&row!=8'b11111011&&row!=8'b11111101&&win==0)row=8'b11111111;end
8'b11111101:begin if(row!=8'b11111011&&row!=8'b11111101&&row!=8'b11111110&&win==0)row=8'b11111111;end

endcase

if(nowc==8'b01000000&&nowr==8'b01111111&&mode==4'b0000)begin win=1;end
if(nowc==8'b01000000&&nowr==8'b11111110&&mode==4'b0001)begin win=1;end
if(nowc==8'b10000000&&nowr==8'b10111111&&mode==4'b0010)begin win=1;end
if(nowc==8'b00000001&&nowr==8'b10111111&&mode==4'b0011)begin win=1;end
if(nowc==8'b00000100&&nowr==8'b11111110&&mode==4'b0100)begin win=1;end
if(nowc==8'b00000100&&nowr==8'b11111110&&mode==4'b0101)begin win=1;end
if(nowc==8'b00001000&&nowr==8'b01111111&&mode==4'b0110)begin win=1;end
if(nowc==8'b00000001&&nowr==8'b11111011&&mode==4'b0111)begin win=1;end
if(nowc==8'b00000010&&nowr==8'b11111110&&mode==4'b1000)begin win=1;end
if(nowc==8'b00001000&&nowr==8'b01111111&&mode==4'b1001)begin win=1;end
if(nowc==8'b00000001&&nowr==8'b10111111&&mode==4'b1010)begin win=1;end
if(nowc==8'b01000000&&nowr==8'b11111110&&mode==4'b1011)begin win=1;end


end
case({timeless})
30:begin  time10=7'b0110000; time1=7'b1000000; end
29:begin  time10=7'b0100100; time1=7'b0011000; end
28:begin  time10=7'b0100100; time1=7'b0000000; end
27:begin  time10=7'b0100100; time1=7'b1111000; end
26:begin  time10=7'b0100100; time1=7'b0000010; end
25:begin  time10=7'b0100100; time1=7'b0010010; end
24:begin  time10=7'b0100100; time1=7'b0011001; end
23:begin  time10=7'b0100100; time1=7'b0110000; end
22:begin  time10=7'b0100100; time1=7'b0100100; end
21:begin  time10=7'b0100100; time1=7'b1111001; end
20:begin  time10=7'b0100100; time1=7'b1000000; end
19:begin  time10=7'b1111001; time1=7'b0011000; end
18:begin  time10=7'b1111001; time1=7'b0000000; end
17:begin  time10=7'b1111001; time1=7'b1111000; end
16:begin  time10=7'b1111001; time1=7'b0000010; end
15:begin  time10=7'b1111001; time1=7'b0010010; end
14:begin  time10=7'b1111001; time1=7'b0011001; end
13:begin  time10=7'b1111001; time1=7'b0110000; end
12:begin  time10=7'b1111001; time1=7'b0100100; end
11:begin  time10=7'b1111001; time1=7'b1111001; end
10:begin  time10=7'b1111001; time1=7'b1000000; end
9:begin  time10=7'b1000000; time1=7'b0011000; end
8:begin  time10=7'b1000000; time1=7'b0000000; end
7:begin  time10=7'b1000000; time1=7'b1111000; end
6:begin  time10=7'b1000000; time1=7'b0000010; end
5:begin  time10=7'b1000000; time1=7'b0010010; end
4:begin  time10=7'b1000000; time1=7'b0011001; end
3:begin  time10=7'b1000000; time1=7'b0110000; end
2:begin  time10=7'b1000000; time1=7'b0100100; end
1:begin  time10=7'b1000000; time1=7'b1111001; end
default: begin time10=7'b1000000; time1=7'b1000000; lose=1; end
endcase
if(count1==16'd600)
begin
count1=16'd0;
test=test+3'd1;
end

if(lose==1)
begin
case({test})

3'b000:begin row=8'b01111111;col=8'b10000001; end

3'b001:begin row=8'b10111111;col=8'b01000010; end

3'b010:begin row=8'b11011111;col=8'b00100100; end

3'b011:begin row=8'b11101111;col=8'b00011000; end

3'b100:begin row=8'b11110111;col=8'b00011000; end

3'b101:begin row=8'b11111011;col=8'b00100100; end

3'b110:begin row=8'b11111101;col=8'b01000010; end

3'b111:begin row=8'b11111110;col=8'b10000001; end

endcase
end
end



endmodule 
