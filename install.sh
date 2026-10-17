#!/usr/bin/env bash
# Install the `yeniden` command into /usr/local/bin.
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
TARGET="/usr/local/bin/yeniden"

if [[ "$EUID" -ne 0 ]]; then
    exec sudo -- bash "$SCRIPT_DIR/install.sh" "$@"
fi

if [[ ! -f "$SCRIPT_DIR/bin/yeniden" ]]; then
    printf 'Error: bin/yeniden was not found in %s\n' "$SCRIPT_DIR" >&2
    exit 1
fi

install -D -m 0755 "$SCRIPT_DIR/bin/yeniden" "$TARGET"
printf 'Installed successfully: %s\n' "$TARGET"
printf 'Run `yeniden` in a terminal to restart the computer.\n'
