#include "errno.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

extern char *ft_strdup(const char *s);
#define STRDUP ft_strdup

int main(void)
{
	char *str;
	int _errno;

	errno = 0;
	str = STRDUP("");
	_errno = errno;
	printf("Empty String: %p: '%s' (err: %d / %s)\n", str, str, _errno, strerror(_errno));
	free(str);

	errno = 0;
	str = STRDUP("Hello, World!");
	_errno = errno;
	printf("Sample String: %p: '%s' (err: %d / %s)\n", str, str, _errno, strerror(_errno));
	free(str);

	return 0;
}
