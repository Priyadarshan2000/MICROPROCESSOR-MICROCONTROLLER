// 8 BIT DIVISION
# ORG 2000H
# BEGIN 2000H
	   LHLD 2501
	   LDA 2503
	   MOV B,A
	   MVI C,08

LOOP:	   DAD H
	   MOV A,H
	   SUB B
	   JC AHEAD
	   MOV H,A
	   INR L

AHEAD:	   DCR C
	   JNZ LOOP
	   SHLD 2504
	   HLT

# ORG 2501H
// LSB OF DIVIDEND , MSB OF DIVIDEND , DIVISOR
# DB 9BH,48H,1AH	


// ANSWER
// AT ADDRESS 2504 - F2H, QUOTIENT
// AT ADDRESS 2505 - 07H, REMAINDER
