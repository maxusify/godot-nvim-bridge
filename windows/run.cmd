@echo off
REM Run-Godot-Neovim.cmd - Launcher for the PowerShell script
REM Usage: Run-Godot-Neovim.cmd file line column [additional args]

REM Check if arguments were provided
if "%~1"=="" (
    echo Usage: %~nx0 file line column [additional args]
    exit /b 1
)

REM Get the directory where this CMD file is located
set "SCRIPT_DIR=%~dp0"

REM Path to the PowerShell script (assumed to be in the same directory)
set "PS_SCRIPT=%SCRIPT_DIR%neovide-godot-bridge.ps1"

REM Run the PowerShell script with the provided arguments
powershell.exe -ExecutionPolicy Bypass -NoProfile -File "%PS_SCRIPT%" %*

exit /b %ERRORLEVEL%
