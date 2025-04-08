# godot-neovide-bridge

![Godot Engine](https://img.shields.io/badge/GODOT-%23FFFFFF.svg?style=for-the-badge&logo=godot-engine)

Small set of scripts for easier integration of Neovide
as Godot Engine external editor.

## Requirements

These scripts assume that you have both `neovide` and `nvim` in your PATH env variable.

## Usage

Clone this repo and open editor settings inside Godot:

```
Editor -> Editor Settings -> Text Editor -> External
```

Setup it like this:

```
Exec Path: /path/to/godot-neovide-bridge/windows/run.cmd
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
