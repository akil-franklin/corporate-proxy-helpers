@echo off
goto check_Permissions

:check_Permissions
    echo Detecting permissions via "net session"...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
    ) else (
        echo Failure: Current permissions inadequate.
    )
