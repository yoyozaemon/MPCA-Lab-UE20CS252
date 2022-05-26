.data

A: .BYTE 10,20,30,40,50,60,70,80,90,10
B: .BYTE 0,0,0,0,0,0,0,0,0,0

.text

LDR r0, =A 
LDR r1, =B 
MOV r2, #8
loop:
	LDRB r3, [r0]
	STRB r3, [r1] 
	SUB r2, r2, #2 
	ADD r0, r0, #3 
	ADD r1, r1, #3
	CMP r2, #0
	BNE loop

.end
