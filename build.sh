#!/bin/bash

rustup target add aarch64-unknown-linux-gnu

dpkg --add-architecture arm64
apt-get update
apt-get install -y libssl-dev:arm64 gcc-aarch64-linux-gnu g++-aarch64-linux-gnu

export OPENSSL_INCLUDE_DIR=/usr/include/aarch64-linux-gnu/openssl
export OPENSSL_LIB_DIR=/usr/lib/aarch64-linux-gnu
export PKG_CONFIG_PATH=/usr/lib/aarch64-linux-gnu/pkgconfig

cargo build --release --target aarch64-unknown-linux-gnu
