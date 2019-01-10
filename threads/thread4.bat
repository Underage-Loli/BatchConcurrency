@echo off

:main
(
echo 1
)>threads\t4.txt

timeout %1
(
echo 2
)>threads\t4.txt
exit