GLOBAL	ft_strcmp
; extern int ft_strcmp(const char *s1, const char *s2);
; *s1: [rdi]
; *s2: [rsi]
; ret: [rax]

SECTION	.text
ft_strcmp:
	mov	rcx,	0
.start:
	mov rax,	0
	mov rbx,	0
	mov	al,	BYTE [rdi + rcx]
	mov bl,	BYTE [rsi + rcx]
	sub	eax,	ebx
	jnz	ft_strcmp.end
	cmp	bl,	0
	jz	ft_strcmp.end
	inc	rcx
	jmp	ft_strcmp.start
.end:
	ret

[section .note.GNU-stack noalloc noexec nowrite progbits]
