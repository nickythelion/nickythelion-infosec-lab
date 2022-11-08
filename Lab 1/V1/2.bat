@echo off
dir /b *.sys DEF*.*> C:\TEMP\RENFILE.doc
ren *.sys WDW*.sys
ren DEF*.* FED*.*
echo. >> C:\TEMP\RENFILE.doc
dir /b WDW*.sys FED*.*>> C:\TEMP\RENFILE.doc
