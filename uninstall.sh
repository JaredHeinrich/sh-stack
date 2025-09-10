#!/bin/bash
set -e
echo "Uninstalling sh-stack"

export REPO_DIR="$(pwd)"
# export PATH="$CARGO_HOME/bin:$PATH"
touch $REPO_DIR/test_file.txt
echo "Uninstalled"
