EXTERN	__errno_location
EXTERN	malloc
EXTERN	ft_strlen
GLOBAL	ft_strdup
; extern char *ft_strdup(const char *s);

SECTION	.text
ft_strdup:
	sub	rsp,	32 - 8
	mov	[rsp],	rdi
	call	ft_strlen
	inc	rax
	mov	[rsp + 8],	rax
	mov	rdi,	rax
	call	malloc wrt ..plt
	mov	rsi,	[rsp]
	mov	rcx,	[rsp + 8]
	add	rsp,	32 - 8
	cmp	rax,	0
	jz	.error
	mov	rdi,	rax
	cld
	rep movsb
.error:
	ret

[section .note.GNU-stack noalloc noexec nowrite progbits]
