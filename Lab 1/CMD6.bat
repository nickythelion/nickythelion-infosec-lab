@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 2 (#18) <<<"

IF EXIST C:/rootlist.txt (
   del C:/rootlist.txt
)

dir /b C: > C:/rootlist.txt
type C:/rootlist.txt

copy C:/rootlist.txt A:/
copy C:/autoexec.bat A:/
copy C:/config.sys A:/