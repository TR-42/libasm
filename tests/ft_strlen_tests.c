#include "stdio.h"

extern size_t ft_strlen(const char *s);

int	main(void) {
	size_t len;

	len = ft_strlen("Hello, World!");
	printf("len: %ld\n", len);
	return 0;
}
