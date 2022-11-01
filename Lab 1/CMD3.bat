@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 2 (#7) <<<"

:: Check if C:/TEMP/RENFILE_2.doc exists and, if yes, delete it
if EXIST C:/TEMP/RENFILE_2.doc (
   echo Output file already exists. Overwriting it...
   del C:/TEMP/RENFILE_2.doc
)

:: Get the list of files in a directory
echo Writing the initial list of files_2 in a directory
echo Before renaming > C:/TEMP/RENFILE_2.doc
echo. >> C:/TEMP/RENFILE_2.doc
dir files_2 /b >> C:/TEMP/RENFILE_2.doc

:: Rename the files
cd files_2
ren *.sys WDW*.sys
ren DEF*.* FED*.*

:: cd back cause easier
cd ../

:: Get the new list of files to C:/TEMP/RENFILE_2.doc
echo Writing the updated list into C:/TEMP/RENFILE_2.doc...
echo. >> C:/TEMP/RENFILE_2.doc
echo After renaming >> C:/TEMP/RENFILE_2.doc
dir /b files_2 >> C:/TEMP/RENFILE_2.doc
