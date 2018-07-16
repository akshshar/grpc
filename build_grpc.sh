#!/bin/bash

source /tmp/protobuf.version
GRPC_INSTALLED_VERSION=`pkg-config --exists grpc && pkg-config --modversion grpc`

rm -rf ~/tempdir
mkdir -p ~/tempdir/

if [[ $GRPC_INSTALLED_VERSION != $GRPC_VERSION ]]; then
    #install grpc
    git clone https://github.com/grpc/grpc.git ~/tempdir/grpc && \
    cd ~/tempdir/grpc && \
    git checkout $GRPC_HASH && \
    git submodule update --init && \
    make && \
    make install 
fi
cd ~/ && rm -rf ~/tempdir
