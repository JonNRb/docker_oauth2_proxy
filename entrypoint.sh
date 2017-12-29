#!/bin/sh

exec /go/bin/oauth2_proxy \
  -config /data/oauth2_proxy.conf \
  "$@"
