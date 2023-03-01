https://schweigi.github.io/assembler-simulator/
;Sum Of Numbers from 0 To 12 as 8 Bit Computer
push 5
call add_
hlt
pop A
add_:
	pop D
	pop A
	cmp A , 0
	JZ is_Zero
	push A
	push D
	sub A , 1
	push A
	call add_
	pop C
	pop D
	pop A
	mul C
	push A
	push D
	ret
	is_Zero:
		push 1
		push D
		ret
