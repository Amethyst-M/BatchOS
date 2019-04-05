@echo off

title BATCH OS build %build% ver %version% [Setup]

:Page 1
cls            
echo ==============================
echo         BATCHOS SETUP
echo ==============================
echo.
echo Hey, welcome to BATCHOS.
echo.
echo.
echo To get started
pause

:Page 2
cls            
echo ==============================
echo         BATCHOS SETUP
echo ==============================
echo.
echo What is your Username.?
echo.
set/p name=
echo.

:Page 3
cls            
echo ==============================
echo         BATCHOS SETUP
echo ==============================
echo.
echo To Add some personalisation, We are now going to decide the color
echo.
echo.
pause
call %core%Settings\Color "        BATCHOS SETUP"
title BATCH OS build %build% ver %version% [Setup]
cls

:Page 4
cls
echo ==============================
echo         BATCHOS SETUP
echo ==============================
echo.
echo Welcome to BatchOS, %name%.
echo.
echo.
echo.
pause
set BootSeq=BootSeqTrue
call %core%Save
cls
call %core%Menu
