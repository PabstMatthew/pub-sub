#SRCS:=$(wildcard *.ivy)
SRCS=arrayset.ivy indexset.ivy multi_paxos_abstract.ivy multi_paxos.ivy shard.ivy table.ivy delmap.ivy pub_sub.ivy
OBJS:=$(patsubst %.ivy,%,$(SRCS))

IVYC_FLAGS=

default: $(OBJS)

%: %.ivy
	ivyc $(IVYC_FLAGS) $<

test:
	$(MAKE) IVYC_FLAGS:="target=test"

clean:
	find . -type f -executable -delete
	rm -f *.cpp *.h *.dsc
