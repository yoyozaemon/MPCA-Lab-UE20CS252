.data
A: .word 15
.text
mov r0, #1 
mov r9, #0 
mov r2, # 15
loop:
and r3,r2, #1
add r9, r9, r3
add r0, r0, #1
mov r2, r2, lsr #1
cmp r0, #5
bne loop
beq exit
exit:
swi 0x11
.end
