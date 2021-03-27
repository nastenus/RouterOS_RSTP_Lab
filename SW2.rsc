/interface bridge
add name=BRIDGE priority=0x2000
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/interface bridge port
add bridge=BRIDGE interface=ether1 priority=0x20
add bridge=BRIDGE interface=ether2 priority=0x10
/ip address
add address=192.168.0.20/24 interface=BRIDGE network=192.168.0.0