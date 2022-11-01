@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 2 (#1) <<<"

:: Check if RENFILE_1.txt exists and, if yes, delete it
if EXIST RENFILE_1.txt (
   echo Output file already exists. Overwriting it...
   del RENFILE_1.txt
)

:: Get the list of files in a directory
echo Writing the initial list of files in a directory
echo Before renaming > RENFILE_1.txt
echo. >> RENFILE_1.txt
dir files_1 /b >> RENFILE_1.txt

:: Rename the files (.doc -> .dot & w.*\.doc -> v.*\.doc)
cd files_1
ren *.doc *.dot
ren W*.dot V*.dot

:: cd back cause easier
cd ../

:: Get the new list of files to RENFILE_1.txt
echo Writing the updated list into RENFILE_1.txt...
echo. >> RENFILE_1.txt
echo After renaming >> RENFILE_1.txt
dir /b files_1 >> RENFILE_1.txt
