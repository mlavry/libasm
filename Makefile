NAME = libasm.a

all: $(NAME)

$(NAME): srcs/ft_strlen.o
	ar rcs $(NAME) srcs/ft_strlen.o

srcs/ft_strlen.o: srcs/ft_strlen.s
	nasm -f elf64 srcs/ft_strlen.s -o srcs/ft_strlen.o

clean:
	rm -f srcs/ft_strlen.o

fclean: clean
	rm -f $(NAME)

re: fclean
	$(MAKE) all

.PHONY: all clean fclean re
