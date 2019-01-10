@echo off

start job_counter.bat

:main
cls
echo.
echo ----------------
echo Choose Length Of Job:
echo.
set /p _job=Enter Choice: 


:checkthread1
echo checking thread 1
set EXE=thread1.bat
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto checkthread2
start threads\thread1.bat %_job%
echo thread 1 started
timeout 2
goto main

:checkthread2
echo checking thread 2
set EXE=thread2.bat
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto checkthread3
start threads\thread1.bat %_job%
echo thread 2 started
timeout 2
goto main

:checkthread3
echo checking thread 3
set EXE=thread3.bat
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto checkthread4
start threads\thread3.bat %_job%
echo thread 3 started
timeout 2
goto main

:checkthread4
echo checking thread 4
set EXE=thread4.bat
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto noThreads
start threads\thread4.bat %_job%
echo thread 4 started
timeout 2
goto main


:noThreads
echo.
echo No Avaliable Threads, Please Wait...
timeout 2
goto main