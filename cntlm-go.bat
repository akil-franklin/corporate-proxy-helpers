@echo off

REM Run Cntlm Interactively so you can see the traffic fly by...

REM ***************************************
REM HANDLE HELP PARAMETER
REM ***************************************
IF [%1]==[/?] GOTO :help

echo %* |find "/?" > nul
IF errorlevel 1 GOTO :main

:help
ECHO Run Cntlm Interactively so you can see the traffic fly by...
GOTO :end

REM ***************************************
REM MAIN BATCH FILE LOGIC
REM ***************************************

:main
"%ProgramFiles(x86)%\Cntlm\cntlm" -v

:end