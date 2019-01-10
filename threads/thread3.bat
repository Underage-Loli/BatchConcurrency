@echo off

:main
(
echo 1
)>threads\t3.txt

timeout %1
(
echo 2
)>threads\t3.txt
exit