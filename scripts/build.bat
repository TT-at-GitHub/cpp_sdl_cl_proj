@echo off

set buildDir=%~dp0..\build

pushd %buildDir%

:: compiler input
set objDir=.\obj\
set outputExe=main
set libs=SDL2.lib SDL2main.lib
set files=..\src\main.cpp

:: compiler flags
:: /Zi enable debugging information
:: /FC use full path in diagnostics
:: /Fo<path> the path to write object files
:: /Fe<path> the path to write the executable file
set compilerFlags=/Zi /FC /Fo%objDir /Fe%outputExe%

:: linker flags:
:: /SUBSYSTEM specifies exe env - defines entry point symbol
set linkFlags=/link /SUBSYSTEM:CONSOLE

if not exist %objDir% mkdir %objDir%

:: calling the cl compiler
cl %compilerFlags% %files% %libs% %linkFlags%

:: Copy dependencies
xcopy /y ..\deps\SDL\lib\x64\SDL2.dll

popd