@echo off
if exist val.ini (
	goto save
) else (
	dir /b > val.ini
)

:save
>val.ini cls
(echo %name%)> val.ini
(echo %color%)>> val.ini
(echo %BootSeq%)>> val.ini

echo Successfully Saved all data to val.ini!

exit /b 