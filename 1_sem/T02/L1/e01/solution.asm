asect  0x00

	ldi r0, a
	ld r0, r0
	
	if 
		tst r0
	is mi
		neg r0
	fi
	
	ldi r1, ans
	st r1, r0
	
    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x10

a:    dc  -17   # replace -18 by your choice of integers for testing
ans:  ds 1      # one byte reserved for the result
end

