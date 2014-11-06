@echo off

REM See Cntlm process information

REM ***************************************
REM HANDLE HELP PARAMETER
REM ***************************************
IF [%1]==[/?] GOTO :help

echo %* |find "/?" > nul
IF errorlevel 1 GOTO :main

:help
ECHO See Cntlm process information

REM ***************************************
REM MAIN BATCH FILE LOGIC
REM ***************************************

:main

tasklist | findstr cntlm

:end