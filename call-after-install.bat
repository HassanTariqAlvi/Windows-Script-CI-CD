@echo off

REM Write to C:\xyz.txt
echo Working-1 > C:\xyz.txt



REM Navigate to the project directory and execute git and npm commands
cd C:\Project\Project-1
call deploy.bat

cd C:\Project\Project-2
call deploy.bat

cd C:\Project
call deploy.bat
call npm-run.bat
