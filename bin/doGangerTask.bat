@echo off
set /p pwd=< C:\bin\meta
call runas /savecred /user:PRDKISMITPHO001\Administrator "%pwd%doGang.bat"
