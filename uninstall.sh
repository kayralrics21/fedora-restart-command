#!/usr/bin/env bash
# Remove the installed `yeniden` command.
set -euo pipefail

if [[ "$EUID" -ne 0 ]]; then
    SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
    exec sudo -- bash "$SCRIPT_DIR/uninstall.sh" "$@"
fi

TARGET="/usr/local/bin/yeniden"
if [[ -e "$TARGET" ]]; then
    rm -- "$TARGET"
    printf 'Removed: %s\n' "$TARGET"
else
    printf 'Nothing to remove; %s does not exist.\n' "$TARGET"
fi
