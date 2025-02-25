NAME = libasm.a
SOURCES = \
    ft_strlen.asm
BSOURCES = 

OBJECTS = $(SOURCES:.asm=.o)
BOBJECTS = $(BSOURCES:.asm=.o)

ASM = nasm
FLAGS = -f elf64
AR = ar
ARFLAGS = rcs

all: $(NAME)

$(NAME): $(OBJECTS)
	$(AR) $(ARFLAGS) $@ $^

bonus: $(OBJECTS) $(BOBJECTS)
	$(AR) $(ARFLAGS) $(NAME) $^

%.o: %.asm
	$(ASM) $(FLAGS) -o $@ $<

clean:
	rm -f $(OBJECTS) $(BOBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
