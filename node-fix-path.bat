@echo off

echo.
echo *** OLD PATH ***
echo %PATH%
echo.
echo.

for /f "delims=" %%i in ('npm config get prefix') do (
	set output=%%i
	REM set "PATH=%PATH%;%%i"
	echo *** NEW PATH ***
	echo %PATH%
)