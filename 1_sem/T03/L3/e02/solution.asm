asect 	0x00

	ldi r0, 8
	ldi r1, x
	ldi r2, y
	ldi r3, sum
	
	push r1
	push r2
	
	ld r1, r1
	ld r2, r2
	
	add r2, r1
	st r3, r1
	
	pop r2
	pop r1
	dec r0
	
	while 
		tst r0
	stays nz
		dec r0
		inc r3
		
		inc r1
		inc r2
		push r1
		push r2
		dec r1
		dec r2
		
		ld r1, r1
		ld r2, r2
		
		add r2, r1
		
		pop r2
		pop r1
		push r1
		push r2
		
		ld r1, r1
		ld r2, r2
		
		addc r2, r1
		
		st r3, r1
		pop r1
		pop r2
	wend

	ldi r0, sum
	halt

x:	dc	0x07,0xab,0x07,0xab,0x07,0xab,0x07,0xab # choose your data
y:	dc	0x07,0xab,0x07,0xab,0x07,0xab,0x07,0xab # choose your data

sum:	ds	8
end
