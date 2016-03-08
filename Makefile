CC = gcc
CFLAGS = -O2 -Wall -std=c99

OUTFILE = vpkex
OBJS = vpkex.o
SRCS = vpkex.c

$(OUTFILE): $(OBJS)
	$(CC) $(CFLAGS) -o $(OUTFILE) $(OBJS)
$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $(SRCS)

clean:
	$(RM) $(OUTFILE) $(OBJS)
