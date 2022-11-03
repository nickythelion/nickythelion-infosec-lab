@echo off
copy TEMP\C*.* TEMP\C*.old
cd TEMP
ren c*.* D*.*
ren D*.old C*.old
pause