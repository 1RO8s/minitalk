CC = gcc
CFLAGS = -Wall -Wextra -Werror
LIBS = -L./libft -lft

all: client server

client: client.o
    $(CC) $(CFLAGS) -o client client.o $(LIBS)

server: server.o
    $(CC) $(CFLAGS) -o server server.o $(LIBS)

%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@

clean:
    rm -f client.o server.o

fclean: clean
    rm -f client server

re: fclean all
