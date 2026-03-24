GLOBAL	ft_strcpy
; extern char *ft_strcpy(char *dst, const char *src);
; *dst: [rdi]
; *src: [rsi]
; *ret: [rax]

SECTION	.text
ft_strcpy:
	mov	rcx,	0
.start:
	cmp	BYTE [rsi + rcx],	0
	jz	ft_strcpy.end
	mov	al,	BYTE [rsi + rcx]
	mov	BYTE [rdi + rcx],	al
	inc	rcx
	jmp	ft_strcpy.start
.end:
	mov	BYTE [rdi + rcx],	0
	mov	rax,	rdi
	ret

[section .note.GNU-stack noalloc noexec nowrite progbits]
