@echo off

REM Write to C:\xyz.txt
echo chal oye > C:\xyz.txt

REM Check if deploy.bat exists in Project-1 directory and run it
if exist C:\Project\Project-1\deploy.bat (
    call C:\Project\Project-1\deploy.bat
) else (
    echo deploy.bat does not exist in C:\Project\Project-1
)

REM Similarly, add a check and call for deploy.bat in Project-2 if needed

