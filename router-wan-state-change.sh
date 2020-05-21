#!/bin/sh

### Custom user script
### Called after internal WAN up/down action
### $1 - WAN action (up/down)
### $2 - WAN interface name (e.g. eth3 or ppp0)
DOMAINS=""
API_TOKEN=""
up() {
	wget "https://www.duckdns.org/update?domains=${DOMAINS}&token=${API_TOKEN}"
}

down() {
	echo "do nothing"
}

"$1" "$2"
