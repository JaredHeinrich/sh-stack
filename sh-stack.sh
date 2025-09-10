#!/bin/bash

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export CARGO_HOME="$REPO_DIR/cargo"

$CARGO_HOME/bin/cargo run --release
