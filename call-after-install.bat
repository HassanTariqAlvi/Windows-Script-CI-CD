@echo off

REM Write to C:\xyz.txt
echo Working > C:\xyz.txt

set PATH=%PATH%;C:\Program Files\Git;

REM Navigate to the project directory and execute git and npm commands
cd C:\Project\Project-1
git config --global --add safe.directory C:/Project/Project-1
call deploy.bat

cd C:\Project\Project-2
call deploy.bat
