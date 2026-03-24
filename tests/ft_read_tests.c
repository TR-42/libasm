#include "errno.h"
#include "stdio.h"
#include "unistd.h"

extern ssize_t ft_read(int fd, void *buf, size_t count);

#define VALID_READ_FUNC ft_read
#define STR2(x) #x
#define STR(x) STR2(x)
#define MSG "Hello, World!\n"

int main(void)
{
	char buf[128];
	ssize_t len;
	int _errno;

	printf("# Valid fd test\n");
	printf("func: %s\n", STR(VALID_READ_FUNC));
	errno = 0;
	len = VALID_READ_FUNC(STDIN_FILENO, buf, sizeof(buf));
	_errno = errno;
	buf[len] = 0;
	printf("len: %ld, errno: %d, str: '%s'\n", len, _errno, buf);
	printf("\n");

	printf("\n");
	printf("# Invalid fd test\n");
	printf("Org\n");
	errno = 0;
	len = read(-1, buf, sizeof(buf));
	_errno = errno;
	printf("len: %ld, errno: %d, str: '%s'\n", len, _errno, buf);
	printf("\n");
	printf("FT\n");
	errno = 0;
	len = ft_read(-1, buf, sizeof(buf));
	_errno = errno;
	printf("len: %ld, errno: %d, str: '%s'\n", len, _errno, buf);

	return 0;
}
