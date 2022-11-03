@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 2 (#13) <<<"

IF EXIST name.txt (
   del name.txt
)

:: The reason for English is because of encoding error using Cyrillic chars
set /p "l_name=Last name: "
set /p "f_name=First name: "
set /p "p_name=Paternity name: "

echo %l_name% %f_name% %p_name% > name.txt