@echo off

REM Define the log file path
set LOGFILE=C:\Project\git-logs.txt

REM Clear the log file
echo. > %LOGFILE%

REM Write to C:\xyz.txt
echo Working > C:\xyz.txt

REM Navigate to the project directory and execute git and npm commands, appending output to the log file
cd C:\Project\Project-1
echo Logging for Project-1 >> %LOGFILE%
call deploy.bat >> %LOGFILE%
cd ..

cd C:\Project\Project-2
echo Logging for Project-2 >> %LOGFILE%
call deploy.bat >> %LOGFILE%
cd ..

cd C:\Project
echo Logging for Project-3 >> %LOGFILE%
call deploy.bat >> %LOGFILE%

REM Done, log file contains the output of git and npm commands
