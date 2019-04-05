@echo off

title BATCH OS build %build% ver %version% [Options\Boot]
:BootSettings
cls
echo =============================
echo           OPTIONS
echo =============================
echo 1.Turn off the Boot Sequence
echo 2.Turn on the Boot Sequence
echo 3.Back
echo =============================
set /p input=
if %input% == 1 goto BootSeqOff
if %input% == 2 goto BootSeqOn
if %input% == 3 exit /b

goto BootSettings

:BootSeqOn
cls
set BootSeq=BootSeqTrue
call %core%Save
echo =============================
echo           OPTIONS
echo =============================
echo Boot Sequence On, Next time you open BATCHOS you will see the boot sequence.
pause
goto BootSettings

:BootSeqOff
cls
set BootSeq=BootSeqFalse
call %core%Save
echo =============================
echo           OPTIONS
echo =============================
echo Boot Sequence off, Next time you open BATCHOS you will be in the main menu.
pause
goto BootSettings