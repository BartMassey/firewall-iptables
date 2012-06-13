# Dummy Makefile to install firewall-iptables

ETC = /etc/firewall
INIT = /etc/init.d

all clean distclean realclean:

install:
	mkdir -p $(ETC)
	cp firewall-iptables $(ETC)/
	chmod 0755 $(ETC)/firewall-iptables
	cp examine-interface $(ETC)/
	chmod 0755 $(ETC)/examine-interface
	cp iptables-modules $(ETC)/
	chmod 0644 $(ETC)/iptables-modules
	[ -f $(INIT)/firewall ] && \
	    mv -f $(INIT)/firewall $(INIT)/firewall.dist
	cp firewall.init $(INIT)/firewall
	chmod 0755 $(INIT)/firewall
