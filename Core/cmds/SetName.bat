@echo off
set name="%~1"
echo Successfully changed name to %name%!
call %cmds%Save
exit /b