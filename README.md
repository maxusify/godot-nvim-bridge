# godot-nvim-bridge

![Godot Engine](https://img.shields.io/badge/GODOT-%23FFFFFF.svg?style=for-the-badge&logo=godot-engine)

Small set of scripts for easier integration of Neovim
as Godot Engine external editor.

> [!WARNING]
> This is experimental project. Expect errors and weird behavior.

## Requirements

These scripts assume that you have `nvim` in your `PATH` env-var.

## Usage

Clone this repo and open editor settings inside Godot:

```
Editor -> Editor Settings -> Text Editor -> External
```

Setup it like this (First line is for Windows and second line is for Linux):

```
Exec Path: /path/to/godot-neovide-bridge/windows/run.cmd
Exec Path: /path/to/godot-neovide-bridge/linux/godot-nvim-bridge.sh
Exec Flags: {file} {col} {line}
Use External Editor: true
```

If you are using .NET version of Godot Engine you can also set it up for C# scripts:

```
Editor -> Editor Settings -> Dotnet -> Editor
```

And set it as follows:

```
External Editor: Custom
Custom Exec Path: /path/to/godot-neovide-bridge/windows/run.cmd
Custom Exec Path Args: {file} {col} {line}
```

On Linux you should also setup your shell aliases to start Neovim like this:

```bash
alias gdnvim="nvim --listen $HOME/.cache/nvim/godot-server.pipe"
```

## Troubleshooting

If Neovim is complaining about address being already in use, just remove the existing pipe file and restart Neovim.

```bash
rm $HOME/.cache/nvim/godot-server.pipe
```
