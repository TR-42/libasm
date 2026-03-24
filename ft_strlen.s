GLOBAL	ft_strlen
; extern size_t ft_strlen(const char *s);


SECTION	.text
ft_strlen:
	mov	rax,	0

.start:
	cmp	BYTE [rdi + rax],	0
	jz	ft_strlen.end
	inc	rax
	jmp	ft_strlen.start
.end:
	ret

[section .note.GNU-stack noalloc noexec nowrite progbits]
