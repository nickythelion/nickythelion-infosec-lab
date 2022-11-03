@echo off
dir /b *.doc > RENFILE.txt
echo. >> RENFILE.txt
ren *.doc *.rtf
ren V*.rtf W*.rtf
dir /b *.rtf >> RENFILE.txt 