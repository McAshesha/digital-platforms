asect  0x00

	ldi r0, x
	ld r0, r0
	
	ldi r1, y
	ld r1, r1
	
	if
		ldi r2, 5
		add r0, r2
		
		cmp r2, r1
	is ge
		clr r3
		add r0, r3
		add r0, r3
		add r0, r3
	else
		ldi r2, z
		ld r2, r2
		
		ldi r3, 7
		add r1, r1
		
		sub r2, r1
		add r1, r3
	fi
	
	ldi r0, ans
	st r0, r3

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

x:    dc -6    # replace these three numbers
y:    dc 4     # by your choice of integers
z:    dc 3     #  for testing purposes

ans:  ds 1     # one byte reserved for the result
end

