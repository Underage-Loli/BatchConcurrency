@echo off

start job_counter.bat

:main
cls
echo.
echo ---------------------
echo Choose Length Of Job:
echo ---------------------
set /p _job=Enter Choice: 
cls

:checkthread1
echo checking thread 1
(
set /p _dummy=
)<threads\t1.txt
if %_dummy%==0 (
start threads\thread1.bat %_job%
echo thread 1 started
timeout 2
goto main
)

:checkthread2
echo checking thread 2
(
set /p _dummy=
)<threads\t2.txt
if %_dummy%==0 (
start threads\thread2.bat %_job%
echo thread 2 started
timeout 2
goto main
)

:checkthread3
echo checking thread 3
(
set /p _dummy=
)<threads\t3.txt
if %_dummy%==0 (
start threads\thread3.bat %_job%
echo thread 3 started
timeout 2
goto main
)

:checkthread4
echo checking thread 4
(
set /p _dummy=
)<threads\t4.txt
if %_dummy%==0 (
start threads\thread4.bat %_job%
echo thread 4 started
timeout 2
goto main
)


:noThreads
echo.
echo No Avaliable Threads, Please Wait...
timeout 2
goto main