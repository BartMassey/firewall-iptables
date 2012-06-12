# Dummy Makefile to install firewall-iptables

all clean distclean realclean:

install:
	mkdir -p /etc/firewall
	cp firewall-iptables /etc/firewall/
	chmod 0755 /etc/firewall/firewall-iptables
	cp iptables-modules /etc/firewall/
	chmod 0644 /etc/firewall/iptables-modules
	[ -f /etc/init.d/firewall ] && \
	    mv -f /etc/init.d/firewall /etc/init.d/firewall.dist
	cp firewall.init /etc/init.d/firewall
	chmod 0755 /etc/init.d/firewall
