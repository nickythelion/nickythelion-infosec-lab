@echo off
echo Dirs: > root.txt
dir /A:D /B >> root.txt
echo. >> root.txt
echo Files: >> root.txt
echo /A:-D /B >> root.txt