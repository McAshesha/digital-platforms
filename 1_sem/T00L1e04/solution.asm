asect  0x00

	ldi r1, 0b00000001
	ldi r2, 0x02
	ldi r3, 3
		
    push r3
    push r2
    push r1
    ldsa r0,0  
    halt

end
