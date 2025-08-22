DILL_C = bsock.c chan.c cr.c ctx.c fd.c handle.c happyeyeballs.c http.c iol.c ipaddr.c ipc.c libdill.c msock.c now.c pollset.c prefix.c rbtree.c socks5.c stack.c suffix.c tcp.c term.c tls.c udp.c utils.c ws.c

OBJ = ${DILL_C:%.c=%.o} dns.o
CPPFLAGS = -DDILL_SOCKETS -DHAVE_EPOLL -Iinclude

libdill.a: $OBJ
        ar -rv $target $prereq

%.o: %.c
        cc $CPPFLAGS $CFLAGS -c -o $target $prereq

dns.o: dns/dns.c
        cc $CPPFLAGS $CFLAGS -c -o $target $prereq
