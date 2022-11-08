@echo off
dir /b C: > C:/listroot.txt
type C:/listroot.txt
copy C:/listroot.txt D:/
copy C:/autoexec.bat D:/
copy C:/config.sys D:/