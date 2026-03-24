NAME	:= libasm.a

SRCS	:= \
	ft_strlen.s\
# 	ft_strcpy.s\
# 	ft_strcmp.s\
# 	ft_write.s\
# 	ft_read.s\
# 	ft_strdup.s\

TESTS	:= \
	tests/ft_strlen_tests.c\

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

test: ${TESTS} ${NAME}
	${CC} -o $@ $^
