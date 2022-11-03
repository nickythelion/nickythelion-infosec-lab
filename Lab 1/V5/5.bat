@echo off
ren delta.txt delta.old
type delta.old > delta.txt
echo Delta = Alfa + Omega >> delta.txt
