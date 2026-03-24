EXTERN	__errno_location
GLOBAL	ft_read
; extern ssize_t ft_read(int fd, void buf*, size_t count);

%define	SYS_READ	0

SECTION	.text
ft_read:
	mov	rax,	SYS_READ
	syscall
	cmp	rax,	0
	js	ft_read.error
	ret
.error:
	neg	eax
	sub	rsp,	8
	mov	[rsp],	eax
	call	__errno_location wrt ..plt
	mov	ebx,	[rsp]
	add	rsp,	8
	mov	[rax],	ebx
	mov	rax,	-1
	ret

[section .note.GNU-stack noalloc noexec nowrite progbits]
