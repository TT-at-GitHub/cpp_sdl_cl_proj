@echo off

set buildDir=%~dp0..\build
set objDir=.\obj\

if exist %buildDir% (
    pushd %buildDir%
    del /q /s *.exe *.pdb *.ilk *.dll *.obj
    rd /s /q %objDir%
    rd /s /q .vs
    popd
)