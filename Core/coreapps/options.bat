@echo off

set settings=%core%Settings/

:options
title BATCH OS build %build% ver %version% [Options\]
cls
echo =============================
echo           OPTIONS
echo =============================
echo        Pick a Option
echo =============================
echo 1: Name
echo 2: Color
echo 3: Boot
echo 4: Reset
echo 5: Infomation
echo 6: Credits
echo 7: Back To Menu

set /p input=
if %input% == 0 goto nofriends
if %input% == 1 call %settings%Name
if %input% == 2 call %settings%Color "           OPTIONS"
if %input% == 3 call %settings%Boot
if %input% == 4 call %settings%Reset
if %input% == 5 call %settings%Infomation
if %input% == 6 call %core%Credits
if %input% == 7 exit /b

goto options

:nofriends
cls
echo =============================
echo           OPTIONS
echo =============================
echo You typed Zero or the letter 0
echo by any chance is that the amount of friends you have?
pause
goto options