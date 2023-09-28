@echo off

REM Write to C:\xyz.txt
echo Working > C:\xyz.txt

REM Navigate to the project directory and execute git and npm commands
cd C:\Project\Project-1

REM Call deploy.bat and write logs to C:\Project\logs-git.txt
call deploy.bat >> C:\Project\logs-git.txt 2>&1
