/interface bridge
add name=BRIDGE priority=0x3000
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/interface bridge port
add bridge=BRIDGE interface=ether1 priority=0x10
add bridge=BRIDGE interface=ether2 priority=0x20
/ip address
add address=192.168.0.30/24 interface=BRIDGE network=192.168.0.0