asect  0x00

	ldi r0, a
	ld r0, r0
	
	ldi r1, b
	ld r1, r1
	
	if 
		cmp r0, r1
	is lt
		ldi r2, x
	else
		
		if
		is eq
			ldi r2, y
		else
			ldi r2, z
		fi
		
	fi
	
	ld r2, r2
	ldi r0, ans
	st r0, r2

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x20

a:    dc 1    # replace these five numbers
b:    dc -1     # by your choice of integers
x:    dc 5     # for testing purposes
y:    dc 3
z:    dc 7

ans:  ds 1     # one byte reserved for the result
end

