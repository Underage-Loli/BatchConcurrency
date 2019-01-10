@echo off

:main
timeout %1
(
echo 1
)>threads\t1.txt
exit