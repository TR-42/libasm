NAME	:= libasm.a

SRCS	:= \
	ft_strlen.s\
	ft_strcpy.s\
# 	ft_strcmp.s\
# 	ft_write.s\
# 	ft_read.s\
# 	ft_strdup.s\

OBJS = $(SRCS:.s=.o)
AS	=	nasm
ASFLAGS	=	-f elf64

all: $(NAME)
$(NAME): $(OBJS)
	ar rcs $@ $^

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean

ft_strlen_test: tests/ft_strlen_tests.c ${NAME}
	${CC} -o $@ $^
ft_strcpy_test: tests/ft_strcpy_tests.c ${NAME}
	${CC} -o $@ $^
