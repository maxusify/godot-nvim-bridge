#!/usr/bin/env pwsh
# Based on: https://github.com/neovide/neovide/issues/2481#issuecomment-2081810651

$file = $args[0]
$line = $args[1]
$col = $args[2]
$server_path = "127.0.0.1:55432"
$program = "neovide"
$portInUse = [bool](Get-NetTCPConnection -LocalPort 55432 -ErrorAction SilentlyContinue)

# Check if server exists, if not start neovide.
if (-not $portInUse) {
    Start-Process -FilePath "$program" -ArgumentList "$file", "--", "--listen", "$server_path"
}

# Note: This assumes nvim is in PATH and supports the same server commands
$remote_command = "<C-\><C-N>:n $file<CR>:call cursor($line,$col)<CR>"
$additional_args = $args[3..($args.Length-1)]
$nvim_args = @("--server", "$server_path", "--remote-send", "$remote_command") + $additional_args

& nvim $nvim_args
