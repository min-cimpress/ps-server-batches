rem @echo off
set /p pwd=< C:\bin\meta
call runas /savecred /user:PRDKISMITPHO001\Administrator "%pwd%doGang.bat"

rem wait for doGanger end
timeout 10

rem robocopy pdf to archieve folder
set /p jig=< C:\bin\jigmeta
call runas /savecred /user:PRDKISMITPHO001\Administrator "robocopy %pwd% \\PRDKISMITPNC001\Archieve\%jig% /move out.pdf"

rem delete generated 01.pdf, 02.pdf ...
rem do not delete trans.pdf so rename it 
rename %pwd%trans.pdf %pwd%trans.tmp
del %pwd%*.pdf /a
rename %pwd%trans.tmp %pwd%trans.pdf
