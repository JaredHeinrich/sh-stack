#!/bin/bash
set -e
echo "Installing sh-stack"

if [ -f "sh-stack" ]; then
    echo "Error: sh-stack already exists in this directory"
    exit 1
fi
TARGET_DIR=$(pwd)
REPO_DIR=$(mktemp -d)
export RUSTUP_HOME="$REPO_DIR/rustup"
export CARGO_HOME="$REPO_DIR/cargo"
export PATH="$CARGO_HOME/bin:$PATH"
trap 'rm -rf "$REPO_DIR"' EXIT

echo "Cloning Repo"
git clone https://github.com/JaredHeinrich/sh-stack.git $REPO_DIR

echo "Installing Rust"
curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path

cd $REPO_DIR
cargo build

mv $REPO_DIR/target/debug/sh-stack $TARGET_DIR

echo "Installation finished"
echo "Run './sh-stack' to start stacking"
