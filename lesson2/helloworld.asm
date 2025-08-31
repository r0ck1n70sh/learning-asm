SECTION .data
msg		db	"Hello World!", 0Ah	; declaring variable memory address

SECTION .text
global _start

_start:
	mov		edx,	13		; # of bytes to write, i.e.,
										; # of chars + 1 (for 0Ah, new line character)
	mov		ecx,	msg		; read memory address of variable
	mov		ebx,	1			; write memory address of variable, i.e. SDTOUT
	mov		eax,	4			; SYSTEM CALL CODE, i.e. PRINT
	int		80h

	
	mov		ebx,	0			; EXIT CODE 0, i.e. successful execution
	mov		eax,	1			; SYSTEM CALL CODE, i.e. EXIT
	int		80h					; interrupt request
