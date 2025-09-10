#!/bin/bash

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export CARGO_HOME="$REPO_DIR/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

cargo run --release
