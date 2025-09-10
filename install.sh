#!/bin/bash
set -e
echo "Installing sh-stack"

REPO_DIR="$(pwd)/sh-stack"
export RUSTUP_HOME="$REPO_DIR/rustup"
export CARGO_HOME="$REPO_DIR/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# Repo clonen, falls noch nicht vorhanden
if [ ! -d "$REPO_DIR" ]; then
    echo "Cloning Repo"
    git clone https://github.com/JaredHeinrich/sh-stack.git $REPO_DIR
    cd $REPO_DIR
    rm install.sh
    rm -rf .git
    chmod +x uninstall.sh
    chmod +x sh-stack.sh
fi

# Rustup installieren, falls noch nicht vorhanden
if [ ! -f "$CARGO_HOME/bin/cargo" ]; then
  echo "Installing Rust"
  curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
  "$CARGO_HOME/bin/rustup" default stable
fi


cd $REPO_DIR
cargo build --release

echo "Installation finished
Goto sh-stack ('cd sh-stack') and start stacking with './sh-stack.sh'."
