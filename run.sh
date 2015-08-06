#!/bin/sh
rpcbind
mount "$@"
/app.sh
