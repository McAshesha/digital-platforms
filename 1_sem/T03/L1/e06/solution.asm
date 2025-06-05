asect  0x00

	ldi r0, length
	ld r0, r0
	
	ldi r1, content
	clr r3
	
	while 
		tst r0
	stays nz
		ld r1, r2
	
		if 
			tst r2
		is nz
			if
			is pl
				inc r3
			fi
		fi
		
		dec r0
		inc r1
	wend
	
	ldi r0, pos
	st r0, r3
	
	
	
	ldi r0, length
	ld r0, r0
	
	ldi r1, content
	clr r3
	
	while 
		tst r0
	stays nz
		ld r1, r2
	
		if 
			tst r2
		is mi
			inc r3
		fi
		
		dec r0
		inc r1
	wend
	
	ldi r0, neg
	st r0, r3
	
	
	
	ldi r0, length
	ld r0, r0
	
	ldi r1, content
	clr r3
	
	while 
		tst r0
	stays nz
		ld r1, r2
	
		if 
			tst r2
		is z
			inc r3
		fi
		
		dec r0
		inc r1
	wend
	
	ldi r0, zer
	st r0, r3
	


    ldi r0, pos  # Loads the start address of your result into r0 for the robot
    halt         # Brings execution to a halt

length:  dc 10          # the length of the array (between 1 and 10)
content: dc 2, 0, -3, 4, -9, 0, 7, 88, -92, 18

pos: ds 1 # 1 byte each for the three result values
neg: ds 1
zer: ds 1
end

