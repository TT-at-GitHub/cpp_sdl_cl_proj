@echo off
 
set scriptsDir=%~dp0
 
cd /d %scriptsDir%..
 
:: uncomment the line below line to debug the vcvars
:: set VSCMD_DEBUG=1
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

set path=%scriptsDir%;%path%
 
:: Add dependencies to our include and lib paths (used by cl.exe)
set INCLUDE=%scriptsDir%..\deps\SDL\include;%INCLUDE%
set LIB=%scriptsDir%..\deps\SDL\lib\x64;%LIB%