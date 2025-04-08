@echo off

if "%~1"=="" (
    echo Usage: %~nx0 file line column [additional args]
    exit /b 1
)

set "SCRIPT_DIR=%~dp0"
set "PS_SCRIPT=%SCRIPT_DIR%neovide-godot-bridge.ps1"

powershell.exe -ExecutionPolicy Bypass -NoProfile -File "%PS_SCRIPT%" %*

exit /b %ERRORLEVEL%
