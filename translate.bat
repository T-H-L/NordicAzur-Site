@echo off
REM Double-click this file after editing the English text in index.html.
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  py translate.py %*
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    python translate.py %*
  ) else (
    echo Python is not installed on this computer.
    echo Install it free from https://www.python.org/downloads/  ^(tick "Add Python to PATH"^)
    pause
  )
)
