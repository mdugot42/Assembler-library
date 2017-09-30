section .data

section .text
	global _ft_isprint

_between:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	cmp rdi, rsi
	jl false
	cmp rdi, rdx
	jg false
	jmp true

_ft_isprint:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov rsi, ' '
	mov rdx, '~'
	call _between
	cmp rax, 0
	jne true

false:
	mov rax, 0x0
	leave
	ret
true:
	mov rax, 0x1
	leave
	ret

