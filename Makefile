NAME = libasm.a
SOURCES = \
    ft_strlen.asm ft_strcpy.asm ft_strcmp.asm ft_write.asm ft_read.asm ft_strdup.asm \
	ft_atoi_base.asm
BSOURCES = 

OBJECTS = $(SOURCES:.asm=.o)
BOBJECTS = $(BSOURCES:.asm=.o)

ASM = nasm
FLAGS = -f elf64 -g -F dwarf
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
