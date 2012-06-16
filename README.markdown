# IP Firewall Config (for Linux and iptables)
Copyright (C) 2001  Oskar Andreasson &lt;blueflux@koffein.net&gt;  
Extensively rewritten by Bart Massey &lt;bart@cs.pdx.edu&gt; 2001-2012.

This collection of shell scripts uses iptables on a Debian
Linux box to set up an IP firewall. Specifically, it sets up
*my* firewall. While it may be helpful in setting up *you*
firewall, you should be aware that:

* I have no idea whether this thing does what it is supposed to.
  On my boxes, it seems to let most of the packets I want to
  let through get through. I cannot promise more than that. The
  whole thing may be horribly insecure even on my boxes. Your boxes
  may be different than mine in important ways. Read the scripts
  yourself, and adapt as desired.

* The more your network looks different from mine, the more
  that you are going to have to give up on just plugging
  config variables and actually alter the script. Adding
  another network is easy. Doing more gets intricate.

* My policy choices may not be yours. Again, the only way to
  fix this is to alter the script. I've described my current
  intended policy below.

This work was adapted incrementally from Oskar Andreasson's
original over a period of many years. In June of 2012, I
rewrote enough of it to restore some generality and
portability.

## Policy

My setup is: 

* An external Internet connection (and sometimes two).

* An internal trusted GB LAN ethernet.

* An internal trusted Ethernet-Over-Power interface on my
  firewall box.

* A WPA-protected trusted 802.11 interface on my firewall box.

* A WEP-protected "semi-trusted" 802.11 interface on my
  firewall box.

My intended policy is this:

* My firewall/server box should be able to send and receive
  any packets from anywhere. It is a trusted host. It should
  be able to provide services on any port.

* Hosts on the trusted networks should be able to send
  packets anywhere they want. They should be able to receive
  packets from the Internet only from trusted sources and/or
  ports. They should not be able to provide services on any
  port unless specific exception is made.

* Hosts on the semi-trusted network should be able to send
  packets to the Internet, but not to any of the trusted
  networks.  They should be able to receive packets from the
  Internet only from trusted sources and/or ports. They
  should not be able to provide services on any port unless
  specific exception is made.
  
## Installation

Examine everything carefully. Do the configuration variable
settings at the front of firewall-iptables. Configure the
Makefile as needed, then run "make install" as root. Configure
your system RC files as appropriate to get the firewall scripts
run at boot. Enjoy your new firewall.

*Bart Massey &lt;bart@cs.pdx.edu&gt;*  
*2012-06-15*
