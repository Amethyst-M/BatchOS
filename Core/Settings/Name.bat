@echo off
title BATCH OS build %build% ver %version% [Options\Name]
:NameChangeComfirm
cls
echo =============================
echo           OPTIONS
echo =============================
echo This will change your Username, Are you sure you want to continue?
echo.
set /P c="[Y/N] "
if /I "%c%" == "Y" goto :namechange
if /I "%c%" == "N" exit /b

goto :NameChangeComfirm

:namechange
cls
echo =============================
echo           OPTIONS
echo =============================
echo What would you like to change your name to.
echo.
set /p name=
echo.
call %core%Save
echo Name Changed to %name%
pause
exit /b