:info

title BATCH OS build %build% ver %version% [Options\Infomation]

call %core%Load

if "%BootSeq%"=="BootSeqTrue" (set Disboot=True)

if "%BootSeq%"=="BootSeqFalse" (set Disboot=False)

cls
echo.=======================
echo        BATCH OS
echo.=======================
echo     DETAILS  
echo.
echo  Name Of User = %name%
echo.
echo  Color ID = %color%
echo.
echo  Boot Sequence = %Disboot%
echo.
echo  VERSION = %version%
echo.  
echo  Build = %build%
echo.
echo  Built from The Original BatchOS
echo.
echo  Original Built from PURNJAY__OS_
echo.
echo.=========================
echo  Theres no Copyright :/
echo.=========================
echo.
pause
exit /b