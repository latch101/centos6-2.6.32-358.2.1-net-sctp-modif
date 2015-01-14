PWD=`pwd`
VER=`uname -r`
obj-m := sctp_ha.o

sctp_ha-y := sm_statetable.o sm_statefuns.o sm_sideeffect.o \
	protocol.o endpointola.o associola.o sysctl.o proc.o ipv6.o \
	transport.o chunk.o sm_make_chunk.o ulpevent.o \
	inqueue.o outqueue.o ulpqueue.o command.o \
	tsnmap.o bind_addr.o socket.o primitive.o \
	output.o input.o debug.o ssnmap.o auth.o 
all:
	make -C /lib/modules/$(VER)/build M=$(PWD) modules
	
clean:
	rm -f *.o *.ko .*.cmd 

