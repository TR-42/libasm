EXTERN	__errno_location
GLOBAL	ft_write
; extern ssize_t ft_write(int fd, const void *buf, size_t count);

%define	SYS_WRITE	1

SECTION	.text
ft_write:
	mov	rax,	SYS_WRITE
	syscall
	cmp	rax,	0
	js	ft_write.error
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
