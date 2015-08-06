#!/bin/sh
set -m
rpcbind -f &
mount "$@"
fg
