@echo off
mkdir t_dir
move *.txt \t_dir\
cd t_dir
ren *.txt *.doc
move *.doc C:\WINDOWS\TEMP\
cd ../
rmdir /S t_dir