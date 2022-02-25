#!/bin/env bash


dir=/etc/openvpn
server_conf=$dir/server.conf
install_dir=$dir/install
echo $server_conf

# DEV TUN/TAP

static_ip=$(mkdir $install_dir && curl ifconfig.co/ip > $install_dir/static_ip && cat $install_dir/static_ip)

dev="{ tun: server.type.tun, tap: server.type.tap }"

config_tun() {

user="nobody"
dev=tun
user="user"
#group #$NOGROUP
persist-key
persist-tun
keepalive 10 120
topology subnet
server   #10.8.0.0 255.255.255.0
ifconfig-pool-persist ipp.txt

options=ARRAY("persist-key persist-tun")
}

