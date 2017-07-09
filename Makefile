CC=clang
CFLAGS=-Wall -Werror

.PHONY: all mcrcon
all:	server.properties

server.properties:
	sh ./init-properties.sh > $@
	chmod 600 $@

mcrcon: mcrcon.c
