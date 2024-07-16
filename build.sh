#!/bin/bash

rustup target add aarch64-unknown-linux-gnu

dpkg --add-architecture arm64
apt-get update
apt-get install -y libssl-dev:arm64 gcc-aarch64-linux-gnu g++-aarch64-linux-gnu

cargo build --release --target aarch64-unknown-linux-gnu
