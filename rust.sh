#!/bin/bash

# from https://www.rust-lang.org/tools/install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


# install rustup target triples
rustup target add arm-unknown-linux-gnueabi

# install packages from cargo
cargo install exa
cargo install bat
cargo install starship
cargo install diesel_cli
cargo install fd-find
cargo install ripgrep
cargo install procs
cargo install cargo-update
cargo install cargo-watch
