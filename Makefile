CC = gcc
CFLAGS = -Werror -Wall -Wextra
SRC = check_args.c \
      init.c \
      monitor_fonc.c \
      philo.c \
      routine.c \
      threads.c \
      utils.c

OBJ = $(SRC:.c=.o)
NAME = philo

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all