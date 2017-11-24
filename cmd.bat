@echo off
title Command Prompt to use without CMD.EXE - Version 2.2. Now works with vars!
:t
set /p t= ">"
if "%t%"=="cmd" goto cmd
if "%t%"=="exit" goto exit
(
echo %t%
)>tmp.bat
call tmp.bat
goto t
:exit
del tmp.bat
exit
:cmd
echo You are in CMD!
pause>nul
goto t