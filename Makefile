NAME = libasm.a
FLAGS = -f macho64

SRCS = ./srcs/ft_strlen.s ./srcs/ft_strcpy.s ./srcs/ft_strcmp.s \
		./srcs/ft_write.s ./srcs/ft_read.s ./srcs/ft_strdup.s
OBJS = $(SRCS:.s=.o)

%.o: %.s
	@nasm $(FLAGS) -o $@ $<

all: $(NAME)

$(NAME): $(SRCS) $(OBJS)
	@ar rc $(NAME) $(OBJS)

clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)
	@rm a.out

re: fclean alk