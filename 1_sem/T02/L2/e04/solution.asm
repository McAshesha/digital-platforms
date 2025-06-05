asect  0x00

	ldi r0, x
	ld r0, r0
	
	ldi r1, 0b00100000
	and r0, r1
	
	ldi r2, 0b00001000
	and r0, r2
	shla r2
	shla r2
	
	if
		cmp r1, r2
	is eq
		ldi r3, 0b00000010
		and r0, r3
		
		shra r2
		shra r2
		shra r2
		shra r2
		
		if 
			cmp r2, r3
		is ne
			ldi r2, 0b00100000
			or r2, r0
			ldi r2, 0b00000010
			or r2, r0
		
			not r1
			not r3
			
			and r1, r0
			and r3, r0
		fi
	fi
	
	ldi r1, ans
	st r1, r0

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x30

x:    dc 0b01101011

ans:  ds 1     # one byte reserved for the result
end

