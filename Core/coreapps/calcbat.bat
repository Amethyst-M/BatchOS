@echo off
title BATCH OS build %build% ver %version% [Calculator]
:calcmenu
cls
echo =======================
echo       CALCULATOR
echo =======================
echo Which Type of sum do you wish to use
echo =======================
echo 1: +
echo 2: -
echo 3: X
echo 4: /
echo 5: Return
set /p type=
if %type%==1 goto calcplus
if %type%==2 goto calcminus
if %type%==3 goto calctimes
if %type%==4 goto calcdivide
if %type%==5 exit /b
cls
echo Option invalid
pause
goto calcmenu

:calcplus
cls
echo =======================
echo     + CALCULATOR +
echo =======================
echo.
echo Please choose the 2 numbers you wish to add
set /p num1=
set /p num2=
echo %num1%+%num2%?
set /a Answer=%num1%+%num2%
echo %Answer%
pause
cls
goto calcmenu
:calcminus
cls
echo =======================
echo     - CALCULATOR -
echo =======================
echo.
echo Please choose the 2 numbers you wish to subtract
set /p num1=
set /p num2=
echo %num1%-%num2%?
set /a Answer=%num1%-%num2%
echo %Answer%
pause
cls
goto calcmenu
:calctimes
cls
echo =======================
echo     x CALCULATOR x
echo =======================
echo.
echo Please choose the 2 numbers you wish to multiply
set /p num1=
set /p num2=
echo %num1%*%num2%?
set /a Answer=%num1%*%num2%
echo %Answer%
pause
cls
goto calcmenu
:calcdivide
cls
echo =======================
echo     \ CALCULATOR /
echo =======================
echo.
echo Please choose the 2 numbers you wish to divide
set /p num1=
set /p num2=
echo %num1%/%num2%?
set /a Answer=%num1%/%num2%
echo %Answer%
pause
cls
goto calcmenu


:EOF