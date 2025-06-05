asect  0x00

	ldi r0, x
	ld r0, r0
	
	ldi r1, y
	ld r1, r1
	
	if
		clr r2
		clr r3
		
		add r0, r2
		add r0, r2
		add r0, r2
		neg r2
		
		add r1, r3
		add r1, r3
		
		cmp r3, r2
	is lt
		add r1, r0
	else
		ldi r0, z
		ld r0, r0
		
		sub r1, r0
	fi	
	
	ldi r1, ans
	st r1, r0

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x20

x:    dc -4    # replace these numbers by your choice
y:    dc 5     # of integers for testing purposes
z:    dc 3

ans:  ds 1     # one byte reserved for the result
end

