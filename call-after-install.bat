@echo off

REM Write to C:\xyz.txt
echo Working > C:\xyz.txt

REM Add Node.js and Git to the PATH
set PATH=%PATH%;C:\Program Files\nodejs;C:\Program Files\Git\cmd

REM Navigate to the project directory and execute git and npm commands
cd C:\Project\Project-1
git stash
git pull
npm i

REMcall deploy.bat
