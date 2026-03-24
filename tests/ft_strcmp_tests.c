#include "string.h"
#include "stdio.h"

extern int ft_strcmp(const char *s1, const char *s2);

#define CMP(s1, s2) printf("'%s' vs '%s' ... org:%d, ft:%d\n", s1, s2, strcmp(s1, s2), ft_strcmp(s1, s2))

int main(void)
{
	CMP("", "");
	CMP("Hello", "Hello");
	CMP("Hello", "hello");
	CMP("hello", "Hello");
	CMP("Hello", "World!!!!");
	CMP("Hello.....", "World!");
}
