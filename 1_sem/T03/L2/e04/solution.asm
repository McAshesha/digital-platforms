asect 	0x00
	
	ldi r0, array
	ldi r1, 8
	ldi r3, res
	
	while
		tst r1
	stays nz 
		dec r1
		ld r0, r2
		inc r0
		
		if
			tst r2 
		is mi
			st r3, r2
			inc r3
		fi
	wend
	
	ldi r0, array
	ldi r1, 8
	
	while
		tst r1
	stays nz 
		dec r1
		ld r0, r2
		inc r0
		
		if
			tst r2 
		is pl
			st r3, r2
			inc r3
		fi
	wend
	
	ldi r0, res
	halt

array:	dc	 5,0,-3,7,4,2,2,-8 # choose some numbers for testing

res:	ds	8
end
	