@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 1 <<<"

if EXIST cmd_1_output.txt (
   echo Output file already exists. Overwriting it...
   del cmd_1_output.txt
)

echo. > cmd_1_output.txt

set cmd_list=CD, DIR, CLS, COPY, FC, DEL, ECHO, MD, SET, SORT, GOTO, IF, MOVE, MORE, PATH, PAUSE, RD, REM, REN, REPLACE, EXIT, START, SUBST, TYPE
for %%i in (%cmd_list%) do (
   echo ====== %%i >> cmd_1_output.txt
   %%i /? >> cmd_1_output.txt
   echo. >> cmd_1_output.txt
   echo %%i
)