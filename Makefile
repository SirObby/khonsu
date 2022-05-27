##
# Project Title
#
# @file
# @version 0.1

OBJS=khonsu.o \
	loader.o# keep loader.o as the LAST object 

all: ${OBJS}

%.o: %.lsp
	clisp -c $< -o $@

exec: ${OBJS}
	clisp -i ${OBJS} -q

# end
