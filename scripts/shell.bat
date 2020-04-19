@echo off
 
set scriptsDir=%~dp0
 
cd /d %scriptsDir%..
 
:: uncomment the line below line to debug the vcvars
:: set VSCMD_DEBUG=1
@call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64 %*
set path=%scriptsDir%;%path%
 
REM :: Add dependencies to our include and lib paths (used by cl.exe)
set INCLUDE=%scriptsDir%..\deps\SDL2-2.0.12\include;%INCLUDE%
set LIB=%scriptsDir%..\deps\SDL2-2.0.12\lib\x64;%LIB%