#!/bin/bash
curl -i -X POST "${BASEURI}/certificates" \
    -F "cert=@{$CRT}" \
    -F "key=@${KEY}" \
    -F "snis=${HOSTS}"