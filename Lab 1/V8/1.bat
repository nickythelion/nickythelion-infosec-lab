@echo off
dir /b *.doc > RENFILE.txt
echo. >> RENFILE.txt
ren *.doc *.rtf
ren v*.rtf w*.rtf
dir /b *.rtf >> RENFILE.txt