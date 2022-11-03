@echo off
mkdir C:\RISK\
dir /b /A:D > C:\listmove.txt
move *.* C:\RISK
cd ../
:: Name?
rmdir /s init_dir 
