@echo off
dir /b > RENFILE.txt
echo. >> RENFILE.txt
ren *.doc *.rtf
ren v*.rtf w*.rtf
dir /b >> RENFILE.txt