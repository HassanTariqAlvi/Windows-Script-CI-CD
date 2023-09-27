@echo off

REM Write to C:\xyz.txt
echo Working > C:\xyz.txt
set PATH=%PATH%;C:\Program Files\nodejs;C:\Program Files\Git\cmd

cd C:\Project\Project-1
git pull
npm i

REMcall deploy.bat
