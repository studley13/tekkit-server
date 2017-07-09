
.PHONY: all
all:	server.properties

server.properties:
	sh ./init-properties.sh > $@
