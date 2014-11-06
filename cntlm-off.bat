@echo off

echo Clearing HTTP_PROXY environment variable for the current session...
set HTTP_PROXY=
net stop cntlm
