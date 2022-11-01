setlocal EnableDelayedExpansion
@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 2 <<<"

:: Check if RENFILE.txt exists and, if yes, delete it
if EXIST RENFILE.txt (
   echo Output file already exists. Overwriting it...
   del RENFILE.txt
)

:: Get the list of files in a directory
echo Writing the initial list of files in a directory
echo Before renaming > RENFILE.txt
echo. >> RENFILE.txt
dir files /b >> RENFILE.txt

:: Rename the files (.doc -> .dot & w.*\.doc -> v.*\.doc)
cd files
ren *.doc *.dot
ren W*.dot V*.dot

:: cd back cause easier
cd ../

:: Get the new list of files to RENFILE.txt
echo Writing the updated list into RENFILE.txt...
echo. >> RENFILE.txt
echo After renaming >> RENFILE.txt
dir /b files >> RENFILE.txt
