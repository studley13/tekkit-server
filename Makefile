CC=clang
CFLAGS=-Wall -Werror

PARTS=server.properties mcrcon

.PHONY: all
all:	$(PARTS)	

.PHONY: clean
clean:
	rm -rf $(PARTS)

server.properties:
	sh ./init-properties.sh > $@

mcrcon: mcrcon.c
