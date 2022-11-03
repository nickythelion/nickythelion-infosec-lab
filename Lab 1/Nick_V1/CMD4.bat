@echo off
echo "Beloguzov Nikolai Copyright 2022 - present"
echo ">>> Task 2 (#11) <<<"

:: Check if delta.old already exists. If yes, delete it
if EXIST delta.old (
   del delta.old
)

:: Check if delta.txt exists and, if yes, rename it
IF EXIST delta.txt (
   ren delta.txt delta.old
)

type delta.old > delta.txt
echo Delta = Alfa + Omega >> delta.txt
