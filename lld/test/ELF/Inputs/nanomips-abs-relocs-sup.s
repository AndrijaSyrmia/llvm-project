	.section .text, "ax", @progbits
	.align 4

	.section .sdata, "aw", @progbits
	.align 4
	.globl c
	.type c, @object
	.size c, 4
c:
	.long 3

	.globl w
	.type w, @object
	.size w, 4
w:
	.long 6
	.globl e_sup
	.equ e_sup, 4


