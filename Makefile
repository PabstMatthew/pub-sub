#SRCS:=$(wildcard *.ivy)
SRCS=arrayset.ivy indexset.ivy multi_paxos_abstract.ivy multi_paxos.ivy shard.ivy table.ivy delmap.ivy pub_sub.ivy
OBJS:=$(patsubst %.ivy,%,$(SRCS))

default: $(OBJS)

%: %.ivy
	ivyc target=test $<

clean:
	find . -type f -executable -delete
	rm -f *.cpp *.h *.dsc
