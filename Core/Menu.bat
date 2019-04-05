@echo off
:Menu
title BATCH OS build %build% ver %version% [Menu]
call %core%Load
set apps=%core%coreapps/
cls
color %color%
echo ================================
echo  Hello %name%
echo --------------------------------
echo  Current Directory:%mypath%
echo --------------------------------
echo  Version:%version% Build:%build%
echo ================================
echo  Please pick a App to continue
echo ================================
echo 1: Calculator
echo 2: Custom Executible Loader
echo 3: Options
echo 4: Command line interface
echo 5: InfoBar
echo 6: Windows Cleanup
echo 7: Music 
echo 8: Calender
echo 9: Assistant
echo 10: Power 
echo ================================
set /p input=
if %input% == 1 call %apps%calcbat
if %input% == 2 call %apps%CEL
if %input% == 3 call %apps%options
if %input% == 4 call %apps%CLI
if %input% == 5 start %apps%InfoBar
rem if %input% == 6 
rem if %input% == 7 
rem if %input% == 8
rem if %input% == 9 
if %input% == 10 call %apps%Power 

goto Menu