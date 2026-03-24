#include "errno.h"
#include "stdio.h"
#include "unistd.h"

extern ssize_t ft_write(int fd, const void *buf, size_t count);

#define MSG "Hello, World!\n"

int main(void)
{
	ssize_t len;
	int _errno;

	printf("# Valid fd test\n");
	printf("Org\n");
	errno = 0;
	len = write(STDOUT_FILENO, MSG, sizeof(MSG));
	_errno = errno;
	printf("len: %ld, errno: %d\n", len, _errno);
	printf("\n");
	printf("FT\n");
	errno = 0;
	len = ft_write(STDOUT_FILENO, MSG, sizeof(MSG));
	_errno = errno;
	printf("len: %ld, errno: %d\n", len, _errno);

	printf("\n");
	printf("# Invalid fd test\n");
	printf("Org\n");
	errno = 0;
	len = write(-1, MSG, sizeof(MSG));
	_errno = errno;
	printf("len: %ld, errno: %d\n", len, _errno);
	printf("\n");
	printf("FT\n");
	errno = 0;
	len = ft_write(-1, MSG, sizeof(MSG));
	_errno = errno;
	printf("len: %ld, errno: %d\n", len, _errno);

	return 0;
}
