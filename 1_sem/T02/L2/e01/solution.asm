asect  0x00

	ldi r0, x
	ld r0, r0
	
	clr r3
	
	if
		ldi r1, 1
		and r0, r1
		tst r0
	is z
		ldi r1, 99
	else 
		if
		is mi 
			ldi r2, -2
			add r2, r1
		else
			ldi r2, 2
			sub r2, r1
		fi
	fi
	
	ldi r2, ans
	st r2, r1

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

x:    dc  0   # replace -18 by your choice of integers for testing

ans:  ds 1      # one byte reserved for the result
end


