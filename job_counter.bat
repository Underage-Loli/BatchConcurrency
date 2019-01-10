@echo off

set /a _1times=0
set /a _2times=0
set /a _3times=0
set /a _4times=0

:main
cls
echo.
echo - - - - - Jobs - - - - - 
echo 1 - Completed %_1times% Times
echo 2 - Completed %_2times% Times
echo 3 - Completed %_3times% Times
echo 4 - Completed %_4times% Times

rem Check for thread updates
rem thread 1
(
set /p _t1done=
)<threads\t1.txt
if %_t1done%==1 goto t1done
goto skipt1
:t1done


:skipt1

rem thread 2
(
set /p _t2done=
)<threads\t2.txt

rem thread 3
(
set /p _t3done=
)<threads\t3.txt

rem thread 4
(
set /p _t4done=
)<threads\t4.txt

goto main