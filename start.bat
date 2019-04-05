@echo off
cls

color 0a
=======
set version=1.0.0a
set build=Dev
title BATCH OS build %build% ver %version% [Starting Up]
set mypath=%cd%

if exist %mypath%\Core (
	set core=%mypath%\Core\
) else ( 
	title BATCH OS build %build% ver %version% [Failed: Core File Missing]
	echo ERROR: CORE FILE NOT FOUND. 
	echo THIS BATCH FILE CANNOT CONTINUE!
	pause
	exit
)

call %core%Boot
