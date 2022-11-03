@echo off
dir /b C: > C:/listroot.txt
type C:/listroot.txt
copy C:/listroot.txt A:/
copy C:/autoexec.bat A:/
copy C:/config.sys A:/