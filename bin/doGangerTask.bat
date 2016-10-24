rem @echo off
set /p pwd=< C:\bin\meta
call runas /savecred /user:PRDKISMITPHO001\Administrator "%pwd%doGang.bat"

rem robocopy pdf to archieve folder
set /p jig=< C:\bin\jigmeta
call runas /savecred /user:PRDKISMITPHO001\Administrator "robocopy %pwd% \\PRDKISMITPNC001\Archieve\%jig% out.pdf"
