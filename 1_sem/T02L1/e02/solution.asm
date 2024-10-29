asect  0x00

	ldi r0, a
	ld r0, r0
	
	ldi r1, b
	ld r1, r1

	if 
		cmp r1, r0
	is ge
		move r1, r0
	fi
	
	ldi r1, c
	ld r1, r1
	
	if 
		cmp r1, r0
	is ge
		move r1, r0
	fi
	
	ldi r1, ans
	
	st r1, r0

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

a:    dc -18   # replace these three numbers
b:    dc -9     # by your choice of integers
c:    dc 5     #  for testing purposes

ans:  ds 1     # one byte reserved for the result
end

