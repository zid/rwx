global BEGIN_PM
extern print_real, switch_pm, print_pm

section .text
bits 16
	mov bp, 0x9000
	mov sp, bp

	mov bx, MSG_REAL_MODE
	call print_real
	
	call switch_pm

	jmp $

bits 32
BEGIN_PM:

	mov ebx, MSG_PROT_MODE
	call print_pm
	
	jmp $

section .data
	MSG_REAL_MODE db "Started in 16-bit Real Mode", 0
	MSG_PROT_MODE db "Successfully landed in 32-bit Protected Mode", 0
