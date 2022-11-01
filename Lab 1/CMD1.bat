@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 1 <<<"

if EXIST cmd_1_output.txt (
   echo Output file already exists. Overwriting it...
   del cmd_1_output.txt
)
help > cmd_1_output.txt