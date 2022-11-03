@echo off
dir /b > C:\TEMP\RENFILE_2.doc
ren *.sys WDW*.sys
ren DEF*.* FED*.*
echo. >> C:\TEMP\RENFILE_2.doc
dir /b >> C:\TEMP\RENFILE_2.doc
