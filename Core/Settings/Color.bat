@echo off

set ctext=%~1
title BATCH OS build %build% ver %version% [Options\Color]
:ColorBack
cls
echo =============================
echo %ctext%
echo =============================
echo [HOW TO SET THE COLOR]
echo Color attributes are specified by TWO hex digits...
echo The first corresponds to the background; 
echo The second the foreground. Each digit can be any of the following values:
echo.
echo 0	=	Black	 	8	=	Gray
echo 1	=	Blue	 	9	=	Light Blue
echo 2	=	Green	 	A	=	Light Green
echo 3	=	Aqua	 	B	=	Light Aqua
echo 4	=	Red 	 	C	=	Light Red
echo 5	=	Purple	 	D	=	Light Purple
echo 6	=	Yellow	 	E	=	Light Yellow
echo 7	=	White	 	F	=	Bright White
echo 10 = Cancel
echo =============================
echo What would you like the Background to be?
set /p BackgroundC=
if %BackgroundC% == 10 goto Options
if %BackgroundC% == 0 goto SelectFore
if %BackgroundC% == 1 goto SelectFore
if %BackgroundC% == 2 goto SelectFore
if %BackgroundC% == 3 goto SelectFore
if %BackgroundC% == 4 goto SelectFore
if %BackgroundC% == 5 goto SelectFore
if %BackgroundC% == 6 goto SelectFore
if %BackgroundC% == 7 goto SelectFore
if %BackgroundC% == 8 goto SelectFore
if %BackgroundC% == 9 goto SelectFore
if /i %BackgroundC% == A goto SelectFore
if /i %BackgroundC% == B goto SelectFore
if /i %BackgroundC% == C goto SelectFore
if /i %BackgroundC% == D goto SelectFore
if /i %BackgroundC% == E goto SelectFore
if /i %BackgroundC% == F goto SelectFore
cls
echo =============================
echo %ctext%
echo =============================
echo Char Invalid.
pause
goto ColorBack

:SelectFore
cls
echo =============================
echo %ctext%
echo =============================
echo [HOW TO SET THE COLOR]
echo Color attributes are specified by TWO hex digits... 
echo The first corresponds to the background; 
echo The second the foreground. Each digit can be any of the following values:
echo.
echo 0	=	Black	 	8	=	Gray
echo 1	=	Blue	 	9	=	Light Blue
echo 2	=	Green	 	A	=	Light Green
echo 3	=	Aqua	 	B	=	Light Aqua
echo 4	=	Red 	 	C	=	Light Red
echo 5	=	Purple	 	D	=	Light Purple
echo 6	=	Yellow	 	E	=	Light Yellow
echo 7	=	White	 	F	=	Bright White
echo 10 = Back
echo =============================
echo What would you like the Foreground (Text) to be?
set /p ForegroundC=
if %ForegroundC% == 10 goto Options
if %ForegroundC% == 0 goto checkcolor
if %ForegroundC% == 1 goto checkcolor
if %ForegroundC% == 2 goto checkcolor
if %ForegroundC% == 3 goto checkcolor
if %ForegroundC% == 4 goto checkcolor
if %ForegroundC% == 5 goto checkcolor
if %ForegroundC% == 6 goto checkcolor
if %ForegroundC% == 7 goto checkcolor
if %ForegroundC% == 8 goto checkcolor
if %ForegroundC% == 9 goto checkcolor
if /i %ForegroundC% == A goto checkcolor
if /i %ForegroundC% == B goto checkcolor
if /i %ForegroundC% == C goto checkcolor
if /i %ForegroundC% == D goto checkcolor
if /i %ForegroundC% == E goto checkcolor
if /i %ForegroundC% == F goto checkcolor

cls
echo =============================
echo %ctext%
echo =============================
echo Char Invalid.
pause >Change it (any key to continue)
goto ColorBack% == 10 goto ColorBack


:colorfuck
cls
echo =============================
echo %ctext%
echo =============================
echo You can't have two of the same color
pause
goto ColorBack

:checkcolor
set color=%BackgroundC%%ForegroundC%
if %color%==00 goto colorfuck
if %color%==11 goto colorfuck
if %color%==22 goto colorfuck
if %color%==33 goto colorfuck
if %color%==44 goto colorfuck
if %color%==55 goto colorfuck
if %color%==66 goto colorfuck
if %color%==77 goto colorfuck
if %color%==88 goto colorfuck
if %color%==99 goto colorfuck
if /i %color%==AA goto colorfuck
if /i %color%==BB goto colorfuck
if /i %color%==CC goto colorfuck
if /i %color%==DD goto colorfuck
if /i %color%==EE goto colorfuck
if /i %color%==FF goto colorfuck

goto MakeColor

:MakeColor
cls
echo =============================
echo %ctext%
echo =============================
color %color%
call %core%Save
echo Color Changed to %color%
pause
exit /b
