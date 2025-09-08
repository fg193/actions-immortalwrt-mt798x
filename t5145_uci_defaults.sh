uci batch <<-EOF

set fstab.@global[0].anon_mount='0'
set fstab.@global[0].check_fs='1'
set system.@imm_init[0].opkg_mirror='https://mirrors.pku.edu.cn/immortalwrt'
set network.lan.proto='dhcp'
set network.lan6=interface
set network.lan6.proto='dhcpv6'
set network.lan6.device='br-lan'
set network.lan6.reqaddress='try'
set network.lan6.reqprefix='auto'
set network.lan6.norelease='1'
add_list firewall.@zone[0].network='lan6'
commit

EOF
