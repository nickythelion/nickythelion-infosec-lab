@echo off
dir /b >> RENFILE.txt
ren *.doc *.dot
ren W*.dot V*.dot
echo. >> RENFILE.txt
dir /b >> RENFILE.txt
