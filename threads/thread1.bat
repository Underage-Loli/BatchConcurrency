@echo off

:main
(
echo 1
)>threads\t1.txt

timeout %1
(
echo 2
)>threads\t1.txt
exit