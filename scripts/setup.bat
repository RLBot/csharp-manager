@rem Change the working directory to the location of this file so that relative paths will work

@echo off

cd /D "%~dp0"

.\flatbuffers\flatc.exe --csharp -o .\generated\flatbuffers .\flatbuffers\rlbot.fbs
xcopy /s /Y .\generated\flatbuffers\rlbot ..\src

echo.
echo #######################
echo ### Setup Complete! ###
echo #######################
echo.

pause
