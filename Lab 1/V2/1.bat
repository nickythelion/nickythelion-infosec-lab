@echo off
dir /b DEF*.* > RENFILE.doc
dir /b DEF*.sys >> RENFILE.doc
ren DEF*.* LED*.*
ren LED*.sys WSD*.sys
dir /b LED*.* >> RENFILE.doc
dir /b WSD*.sys >> RENFILE.doc