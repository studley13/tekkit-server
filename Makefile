CC=clang
CFLAGS=-Wall -Werror

.PHONY: all
all:	server.properties

server.properties:
	sh ./init-properties.sh > $@

mcrcon: mcrcon.c
