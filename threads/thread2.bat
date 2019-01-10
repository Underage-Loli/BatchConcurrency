@echo off

:main
(
echo 1
)>threads\t2.txt

timeout %1
(
echo 2
)>threads\t2.txt
exit