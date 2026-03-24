#include "string.h"
#include "stdio.h"

extern char *ft_strcpy(char *dst, const char *src);
#define STRCPY ft_strcpy

#define HELLO_WORLD_LONG "Hello..., World!!!"
#define HELLO_WORLD_SHORT "Hello, World!"

int main(void)
{
	char buf[sizeof(HELLO_WORLD_LONG)];

	printf(" long_ptr: %p\n", HELLO_WORLD_LONG);
	printf(" long_str: %s\n", HELLO_WORLD_LONG);
	printf("short_ptr: %p\n", HELLO_WORLD_SHORT);
	printf("short_str: %s\n", HELLO_WORLD_SHORT);
	char *ptr = STRCPY(buf, HELLO_WORLD_LONG);
	printf("  ret_ptr: %p\n", ptr);
	printf("  buf_ptr: %p\n", buf);
	printf("  buf_str: %s\n", buf);
	ptr = STRCPY(buf, HELLO_WORLD_SHORT);
	printf("  ret_ptr: %p\n", ptr);
	printf("  buf_str: %s\n", buf);
	ptr[sizeof(HELLO_WORLD_SHORT) - 1] = '_';
	printf("->buf_str: %s\n", buf);
	return 0;
}
