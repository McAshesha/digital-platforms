asect  0x00

	ldi r0, a
	ld r0, r0

	if
		tst r0
	is z
		ldi r1, x
		ld r1, r1
		
		neg r1
		move r1, r3
	fi

	ldi r1, 1
	if
		cmp r0, r1
	is eq
		ldi r1, x
		ld r1, r1
		
		ldi r2, y
		ld r2, r2
		
		add r1, r2
		move r2, r3
	fi

	ldi r1, 2
	if
		cmp r0, r1
	is eq
		ldi r1, y
		ld r1, r1
		
		ldi r2, z
		ld r2, r2
		
		sub r1, r2
		move r2, r3
	fi

	ldi r0, ans
	st r0, r3

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x30

a:    dc 2   # replace these three numbers
x:    dc 5     # by your choice of integers
y:    dc 3     #  for testing purposes
z:    dc 7

ans:  ds 1     # one byte reserved for the result
end

