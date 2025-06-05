asect  0x00

	ldi r0, n
	ld r0, r0
	
	ldi r1, content
	clr r2
	
	while 
		cmp r0, r2
	stays ne
		inc r2
		st r1, r2
		inc r1
	wend

    ldi r0, content  # Loads the address of your result into r0 for the robot
    halt            # Brings execution to a halt

asect 0x20

n:       dc 12   # replace this with your choice of unsigned number for testing
content: ds 15  # 15 bytes reserved for the content of the array
end

