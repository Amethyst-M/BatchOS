@echo off

title BATCH OS build %build% ver %version% [Options\Reset]

:resetConfirm
cls
echo =============================
echo           OPTIONS
echo =============================
echo This will reset all data, are you sure?
echo.
set /P c="[Y/N]? "
if /I "%c%" == "Y" goto reset
if /I "%c%" == "N" exit /b
cls
goto resetConfirm

:reset
title BATCH OS build %build% ver %version% [Resetting Batch OS]
cls
del val.ini
ECHO 
echo =============================
echo            DONE!
echo =============================
echo.
echo Restarting Batch OS
ECHO 
pause
start start.bat
exit