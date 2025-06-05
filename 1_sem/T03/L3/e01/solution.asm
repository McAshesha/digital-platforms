asect	0x00

	ldi r0, S
	ld r0, r1
	ldi r2, "{"
	
	if
		cmp r1, r2
	is ne
		jsr stop
	fi
		
	while
		ld r0, r1
		tst r1
	stays nz
		inc r0
		move r1, r2
	wend
	
	ldi r1, "}"
	
	if
		cmp r1, r2
	is ne
		jsr stop
	fi

	ldi r0, S
	ldi r1, 0b00000000
	push r1
	while
		ld r0, r1
		tst r1
	stays nz
		if
			ldi r2, "h"
			cmp r1, r2
		is ls
			if 
				ldi r2, "a"
				cmp r1, r2
			is hs
				sub r1, r2
				ldi r3, 0b10000000
				jsr shrn
				
				pop r2
				or r3, r2
				push r2
			fi
		fi
		inc r0
	wend
	
	
	ldi r0, S
	ldi r2, 0b00000000
	push r2
	while
		ld r0, r1
		tst r1
	stays nz
		if
			ldi r2, "p"
			cmp r1, r2
		is ls
			if 
				ldi r2, "i"
				cmp r1, r2
			is hs
				sub r1, r2
				ldi r3, 0b10000000
				jsr shrn
				
				pop r2
				or r3, r2
				push r2
			fi
		fi
		inc r0
	wend
	
	
	ldi r0, S
	ldi r2, 0b00000000
	push r2
	while
		ld r0, r1
		tst r1
	stays nz
		if
			ldi r2, "x"
			cmp r1, r2
		is ls
			if 
				ldi r2, "q"
				cmp r1, r2
			is hs
				sub r1, r2
				ldi r3, 0b10000000
				jsr shrn
				
				pop r2
				or r3, r2
				push r2
			fi
		fi
		inc r0
	wend
	
	
	ldi r0, S
	ldi r2, 0b00000000
	push r2
	while
		ld r0, r1
		tst r1
	stays nz
		if
			ldi r2, "z"
			cmp r1, r2
		is ls
			if 
				ldi r2, "y"
				cmp r1, r2
			is hs
				sub r1, r2
				ldi r3, 0b10000000
				jsr shrn
				
				pop r2
				or r3, r2
				push r2
			fi
		fi
		inc r0
	wend
	
	
	ldi r0, result
	inc r0
	inc r0
	inc r0
	
	pop r1
	st r0, r1
	dec r0
	
	pop r1
	st r0, r1
	dec r0
	
	pop r1
	st r0, r1
	dec r0
	
	pop r1
	st r0, r1
	dec r0
	
	ldi r0,result
	halt
	
stop:
	ldi r0, result
	ldi r1, 0
	st r0, r1
	inc r0
	st r0, r1
	inc r0
	st r0, r1
	inc r0
	ldi r1, 0b00111111
	st r0, r1
	ldi r0, result
    halt

shrn:
	while
		tst r2
	stays ne
		dec r2
		shr r3
	wend
	rts

S:	dc	"{f,a,z,q}",0 	# replace by your choice of S for testing
	ds	40	# reserve more space in case the string from tester is longer than ours
result: ds	4
end
