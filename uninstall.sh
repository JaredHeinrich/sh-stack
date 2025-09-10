#!/bin/bash
set -e
echo "Uninstalling sh-stack"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rm -rf $REPO_DIR
echo "Uninstalled"
