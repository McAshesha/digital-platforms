asect  0x00

	ldi r0, n
	ld r0, r0
	
	clr r1
	clr r2
	ldi r3, -1
	
	while
		 cmp r1, r0
	stays ls
		if
			add r1, r2
		is hs
			ldi r3, 1
			ldi r2, 255
			
			ldi r0, res
			st r0, r2
			
			ldi r1, oflow
			st r1, r3
			halt
		fi
		inc r1
	wend
	
	ldi r0, res
	st r0, r2
			
	ldi r1, oflow
	st r1, r3	

    ldi r0, res  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x30

n:     dc 4    # replace this with your choice of unsigned number for testing

res:   ds 1    # one byte reserved for the (unsigned number) total
oflow: ds 1    # one byte to indicate whether or not an overflow has occurred
end

