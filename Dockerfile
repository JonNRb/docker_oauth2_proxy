from golang:1.11.2 as build
run CGO_ENABLED 0 go get github.com/bitly/oauth2_proxy

from gcr.io/distroless/base

copy --from=build /go/bin/oauth2_proxy /oauth2_proxy
add oauth2_proxy.conf /data/oauth2_proxy.conf

expose 4180

entrypoint ["/oauth2_proxy", "-config", "/data/oauth2_proxy.conf"]
