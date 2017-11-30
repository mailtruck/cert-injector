#!/bin/bash
ls -alh /etc/tls
echo tls.crt
cat /etc/tls/tls.crt
echo tls.key
cat /etc/tls/tls.key
echo posting cert to kong-admin
curl -i --insecure -X POST "$BASEURI/certificates" \
    -F cert=@$CRT \
    -F key=@$KEY \
    -F snis=$HOSTS