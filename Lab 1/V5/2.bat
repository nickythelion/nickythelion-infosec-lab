@echo off
dir /b *.doc > RENFILE.txt
ren *.doc *.dot
ren W*.dot V*.dot
echo. *.dot >> RENFILE.txt
dir /b >> RENFILE.txt
