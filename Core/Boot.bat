@echo off

title BATCH OS build %build% ver %version% [Boot Sequence]

if exist val.ini (call %core%Load)


IF "%BootSeq%" == "BootSeqFalse" (
	goto endofboot
)


cls
echo Finding Kernel.........
ping -n 2 0.0.0.0 >nul
echo Kernel Found!
ping -n 2 0.0.0.0 >nul
echo Loading data
ping -n 2 0.0.0.0 >nul
cls
echo Loading data.
ping -n 2 0.0.0.0 >nul
cls
echo Loading data..
ping -n 2 0.0.0.0 >nul
cls
echo Loading data...
ping -n 2 0.0.0.0 >nul
cls
echo Loading data
ping -n 2 0.0.0.0 >nul
cls
echo Loading data.
ping -n 2 0.0.0.0 >nul
cls
echo Loading data..
ping -n 2 0.0.0.0 >nul
cls
echo Loading data...
ping -n 2 0.0.0.0 >nul

:endofboot
if exist val.ini (
	call %core%Menu
) else ( 
	call %core%Setup
)
