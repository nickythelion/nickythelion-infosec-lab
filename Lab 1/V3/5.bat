@echo off
dir /b C: > C:/rootlist.txt
type C:/rootlist.txt
copy C:/rootlist.txt A:/
copy C:/autoexec.bat A:/
copy C:/config.sys A:/