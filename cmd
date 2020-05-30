#!/bin/sh

set -e

ss-local -c /etc/proxy/shadowsocks.json -f /tmp/ss-local.pid && \
privoxy --pidfile /tmp/privoxy.pid /etc/proxy/privoxy.config && \
ps aux
echo "Server Started!"
while true; do sleep 1; done