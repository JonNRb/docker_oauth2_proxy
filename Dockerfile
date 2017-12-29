from golang:alpine

run apk update && apk add git
run go get github.com/bitly/oauth2_proxy

add oauth2_proxy.conf /data/oauth2_proxy.conf
add entrypoint.sh /entrypoint.sh

expose 4180

entrypoint ["/entrypoint.sh"]
