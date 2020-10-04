#!/bin/sh
#
cat accounts.log  | grep 'secret key file' | awk 'BEGIN { FS="--"; } { print $3 }'
