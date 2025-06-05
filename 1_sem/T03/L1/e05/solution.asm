asect  0x00

	ldi r0, length
	ld r0, r0
	
	ldi r1, content
	
	while 
		tst r0
	stays nz
		ld r1, r2
	
		if 
			tst r2
		is mi
			neg r2
		fi
		
		st r1, r2
		
		dec r0
		inc r1
	wend

    ldi r0, content  # Loads the start address of your result into r0 for the robot
    halt             # Brings execution to a halt

length:  dc 9          # the length of the array (between 1 and 10)
content: dc 2, 0, -3, 4, -9, 0, 88, -92, 18

end

