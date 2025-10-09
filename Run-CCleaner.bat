:: Run-CCleaner.bat
@echo off
setlocal

set TRY1=%ProgramFiles%\CCleaner\CCleaner64.exe
set TRY2=%ProgramFiles%\CCleaner\CCleaner.exe
set TRY3=%ProgramFiles(x86)%\CCleaner\CCleaner.exe

if exist "%TRY1%" set CC="%TRY1%"
if not defined CC if exist "%TRY2%" set CC="%TRY2%"
if not defined CC if exist "%TRY3%" set CC="%TRY3%"

if not defined CC (
  echo CCleaner not found. Install it or update this script.
  exit /b 1
)

set LOG=%TEMP%\CCleaner_%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.log
set LOG=%LOG: =0%

echo Running CCleaner...
"%CC%" /AUTO > "%LOG%" 2>&1

echo Done. Log saved to: %LOG%
endlocal
