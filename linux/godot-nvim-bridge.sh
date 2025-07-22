#!/usr/bin/env bash
# Based on: https://github.com/neovide/neovide/issues/2481#issuecomment-2081810651

set +x

SERVER_PATH="$HOME/.cache/nvim/godot-server.pipe"
FILE=$1
LINE=$2
COL=$3
PROGRAM="/usr/bin/nvim"

# Check if the server path exists, and if not, start it.
[[ -e $SERVER_PATH ]] ||
  $PROGRAM \
    --listen "$SERVER_PATH" \
    --server "$SERVER_PATH" \
    -- "$FILE"

# Send the command to the server.
nvim \
  --server "$SERVER_PATH" \
  --remote-send "<C-\><C-N>:n $FILE<CR>:call cursor($LINE,$COL)<CR>" "${@:4}"
