from golang:alpine

run apk update && apk add git
run go get github.com/bitly/oauth2_proxy

add oauth2_proxy.conf /data/oauth2_proxy.conf

expose 4180

cmd [ "/go/bin/oauth2_proxy"    \
    , "-config"                 \
    , "/data/oauth2_proxy.conf" \
    ]
