: ==== start ====
ipsec _stackmanager start 
/usr/local/libexec/ipsec/pluto --config /etc/ipsec.conf 
/testing/pluto/bin/wait-until-pluto-started
ipsec auto --add westnet-eastnet-compress
ipsec auto --status
ip xfrm policy
echo "initdone"
