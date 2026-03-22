NAME	:= libasm.a

SRCS	:= \
	ft_strlen.asm\
	ft_strcpy.asm\
	ft_strcmp.asm\
	ft_write.asm\
	ft_read.asm\
	ft_strdup.asm\

OBJS = $(SRCS:.asm=.o)

all: $(NAME)
$(NAME): $(OBJS)
	ar rcs $@ $^

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean
