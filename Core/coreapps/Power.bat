@echo off
:Power
cls
echo =============================
echo            POWER
echo =============================
echo --BatchOS--
echo 1.Power off
echo 2.Restart
echo --Windows--
echo 3.Power off
echo 4.Restart
echo 5.Sleep
echo --Back--
echo 6.Back to menu
set /p input=
if %input% == 1 goto BatchOS-SD
if %input% == 2 goto BatchOS-Restart
if %input% == 3 goto Windows-SD
if %input% == 4 goto Windows-Restart
if %input% == 5 goto Windows-Sleep
if %input% == 6 exit /b
cls
echo =============================
echo            POWER
echo =============================
echo Option invalid
pause
goto Power

:BatchOS-SD
cls
echo =============================
echo            POWER
echo =============================
echo Powering off.
tasklist /V /FI "WINDOWTITLE eq BATCH OS build %build% ver %version% [InfoBar]" | find /I "BATCH OS build %build% ver %version% [InfoBar]" >NUL && (taskkill /FI "WINDOWTITLE eq BATCH OS build %build% ver %version% [InfoBar]" /T /F)
exit
:BatchOS-Restart
cls
echo =============================
echo            POWER
echo =============================
echo Restarting.
tasklist /V /FI "WINDOWTITLE eq BATCH OS build %build% ver %version% [InfoBar]" | find /I "BATCH OS build %build% ver %version% [InfoBar]" >NUL && (taskkill /FI "WINDOWTITLE eq BATCH OS build %build% ver %version% [InfoBar]" /T /F)
start start.bat
exit
:Windows-SD
echo =============================
echo            POWER
echo =============================
echo Are you sure you want to do this?
echo This will shutdown the real Windows
CHOICE 
if errorlevel 1 goto Windows-SDING
if errorlevel 2 goto Power
:Windows-Restart
echo =============================
echo            POWER
echo =============================
echo Are you sure you want to do this?
echo This will shutdown and restart the real Windows
CHOICE 
if errorlevel 1 goto Windows-Restarting
if errorlevel 2 goto Power

:Windows-Sleep
echo =============================
echo            POWER
echo =============================
echo Are you sure you want to do this?
echo This will Make your computer go to sleep
CHOICE 
if errorlevel 1 rundll32.exe powrprof.dll,SetSuspendState
if errorlevel 2 goto Power
exit /b

:Windows-Restarting
shutdown.exe /r /t 00
:WR-L
echo =============================
echo            POWER
echo =============================
echo Windows is restarting...
goto WR-L

:Windows-SDING
shutdown.exe /s /t 00
:WSD-L
echo =============================
echo            POWER
echo =============================
echo Windows is Shutting Down...
goto WSD-L