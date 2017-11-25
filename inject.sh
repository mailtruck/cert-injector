#!/bin/bash
ls -alh /etc/tls
echo tls.crt
cat /etc/tls/tls.crt
echo tls.key
cat /etc/tls/tls.key
curl -i -X POST "$BASEURI/certificates" \
    -F cert=@$CRT \
    -F key=@$KEY \
    -F snis=$HOSTS \
    -u $USER:$PASS