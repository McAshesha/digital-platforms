asect	0x00
	
	ldi r0, s
	ldi r2, p	
	
	while
		ld r0, r1
		tst r1
	stays nz
		inc r0
		jsr check
	wend
	ldi r1, res
	ldi r2, -1
	st r1, r2
	
	ldi r0, res
	halt

check:
	push r0
	push r2
	
	while
		ld r2, r3
		ld r0, r1
		tst r3
	stays nz
		inc r0
		inc r2
		
		if 
			cmp r1, r3
		is ne
			pop r2
			pop r0
			rts
		fi
	wend
	pop r2
	pop r0
	ldi r1, res
	st r1, r0
	halt

asect 0x40

s:		dc "cats like milk",0 	# do NOT use labels _s and _p above!
p:		dc "ke milk",0	# do NOT use labels _s and _p above!

res:	ds	1
end

