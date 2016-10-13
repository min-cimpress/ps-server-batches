@echo off
rem read the current working directory
set /p pwd=< meta
cd %pwd%
call doGang.bat
