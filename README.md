# SIMULATION AND IMPLEMENTATION OF SEQUENTIAL LOGIC CIRCUITS

**AIM:** To simulate and implement the following circuits using VIVADO 2023.2.<br>
&emsp;&emsp;&emsp;&emsp;&emsp;1) SR flipflop<br>
&emsp;&emsp;&emsp;&emsp;&emsp;2) JK flipflop<br>
&emsp;&emsp;&emsp;&emsp;&emsp;3) T flipflop<br>
&emsp;&emsp;&emsp;&emsp;&emsp;4) D flipflop<br>
&emsp;&emsp;&emsp;&emsp;&emsp;5) UpDown Counter<br>
&emsp;&emsp;&emsp;&emsp;&emsp;6) Mod 10 Counter<br>
&emsp;&emsp;&emsp;&emsp;&emsp;7) Ripple Carry Counter<br>

**APPARATUS REQUIRED:** VIVADO 2023.2

**PROCEDURE:**

STEP:1  Launch the Vivado 2023.2 software.<br>
STEP:2  Click on “create project ” from the starting page of vivado.<br>
STEP:3  Choose the design entry method:RTL(verilog/VHDL).<br>
STEP:4  Crete design source  and give name to it and click finish.<br>
STEP:5  Write the verilog code and check the syntax.<br>
STEP:6  Click “run simulation” in the navigator window and click “Run behavioral simulation”.<br>
STEP:7  Verify the output in the simulation window.<br>

**SR FLIPFLOP:**

**LOGIC DIAGRAM:**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/77fb7f38-5649-4778-a987-8468df9ea3c3)

<br>
<br>
<br>
<br>

**VERILOG CODE:**

```
module sr(s,r,clk,rst,q);
input s,r,clk,rst;
output reg q;
always @ (posedge clk)
begin 
if (rst==1)
q=1'b0;
else 
begin
case ({s,r})
2'b00: q = q;
2'b01: q = 1'b0;
2'b10: q = 1'b1;
2'b11: q = 1'bx;
endcase
end
end
endmodule
```

**OUTPUT:**

![Screenshot 2024-04-06 111951](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/ede889cf-b50f-480a-bfe5-920ad5c448c7)

**JK FLIPFLOP:**

**LOGIC DIAGRAM:**<br>
![JK-Flip-Flop-Circuit-using-74LS73-Truth-Table](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/fd6831bd-8497-4ffa-88ae-1b1f12b3fd3c)

**VERILOG CODE:**

```
module jk(j,k,clk,rst,q);
input j,k,clk,rst;
output reg q;
always @ (posedge clk)
begin 
if (rst==1)
q=1'b0;
else 
begin
case ({j,k})
2'b00: q = q;
2'b01: q = 1'b0;
2'b10: q = 1'b1;
2'b11: q = ~q;
endcase
end
end
endmodule
```

**OUTPUT:**

![Screenshot 2024-04-06 112629](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/b0ebf4b3-ac7f-4014-b56f-00d8dd10c65a)

**T FLIPFLOP:**

**LOGIC DIAGRAM:**

![t-flip-flop](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/25dc641d-aa8f-4960-9222-08b771a9d876)

**VERILOG CODE:**

```
module t(t,clk,rst,q);
input t,clk,rst;
output reg q;
always @ (posedge clk)
begin 
if (rst==1)
q=1'b0;
else if (t==0)
q=q;
else
q=~q;
end
endmodule
```

**OUTPUT:**

![Screenshot 2024-04-06 111656](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/2f6d1a48-fd1a-40ff-8239-563a66f0564f)

**D FLIPFLOP:**

**LOGIC DIAGRAM:**

![d-flip-flop](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/0dbcde66-9a6d-4633-91e5-95df68bb77b6)

**VERILOG CODE:**

```
module d(d,clk,rst,q);
input d,clk,rst;
output reg q;
always @ (posedge clk)
begin 
if (rst==1)
q=1'b0;
else
q=d;
end
endmodule
```

**OUTPUT:**

![Screenshot 2024-04-06 112153](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/80e530a3-9861-4c82-b359-4e49d05f4e7c)

**UPDOWN COUNTER:**

**LOGIC DIAGRAM:**
![Truth Table](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/3da9ea69-5745-482c-8fe7-28ab96440dcb)


**VERILOG CODE:**

```
module updowncounter(clk,rst,updown,out);
input clk,rst,updown;
output reg [3:0]out;
always @(posedge clk)
begin
if (rst==1)
out=4'b0000;
else if (updown==1)
out=out+1;
else
out=out-1;
end
endmodule
```

**OUTPUT:**

![Screenshot 2024-04-02 133943](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/47ae4a6f-afc3-4dc7-8ebf-acb7eb0c5bc4)

**MOD 10 COUNTER:**

**LOGIC DIAGRAM**

![ModNcountingsequence](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/7f0185ae-ceaf-4b2a-b9fe-7082df7cc637)

**VERILOG CODE:**

```
module mod10counter(clk,rst,out);
input clk,rst;
output reg [3:0]out;
always @(posedge clk)
begin
if (rst==1 | out==4'b1001)
out=4'b0000;
else
out=out+1;
end
endmodule
```


**OUTPUT:**

![Screenshot 2024-04-02 135812](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/a4534c02-50b7-48b1-92bc-3f98a861df1b)

**RIPPLE CARRY COUNTER:**

**LOGIC DIAGRAM**

![6](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/ba8419e7-e456-4277-81cd-021b7bc2aaab)

**VERILOG CODE:**

```
module ripple_carry_counter(q, clk, reset);
output [3:0] q;
input clk, reset;
T_FF tff0(q[0], clk, reset);
T_FF tff1(q[1], q[0], reset);
T_FF tff2(q[2], q[1], reset);
T_FF tff3(q[3], q[2], reset);
endmodule

module T_FF(q, clk, reset);
output q;
input clk, reset;
wire d;
D_FF dff0(q, d, clk, reset);
not n1(d, q); 
endmodule

module D_FF(q, d, clk, reset);
output q;
input d, clk, reset;
reg q;
always @(posedge reset or negedge clk)
if (reset)
q = 1'b0;
else
q = d;
endmodule
```

**OUTPUT:**

![Screenshot 2024-04-06 112923](https://github.com/TharunPR/VLSI-LAB-EXP-4/assets/117915125/0277de03-1cc0-4c43-afad-e00e5535a691)

**RESULT:**

&emsp;&emsp;Thus the simulation of sequential circuits is done and outputs are verified
successfully.
