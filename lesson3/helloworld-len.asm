SECTION .data
msg		db	"Hello, new World!", 0Ah	; declaring variable memory address

SECTION .text
global _start

_start:
	mov		ebx, msg				; copying into begin addr
	mov		eax, ebx				;	copying into pointer addr

nextchar:
	cmp		byte [eax], 0		; comparing pointer value with EOS char
	jz		finished				; if true, then jump to finished
	inc		eax							; else, increase pointer value
	jmp		nextchar				; and repeat

finished:
	sub		eax,	ebx				; substracting begin from end addr
												; for calculating length of string

	mov		edx,	eax				; copying diff (i.e. length of string)
												; into length argument
	mov		ecx,	msg
	mov		ebx,	1
	mov		eax,	4
	int		80h
	
	mov		ebx,	0
	mov		eax,	1
	int		80h
