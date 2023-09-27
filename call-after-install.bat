@echo off
taskkill /F /IM git.exe /T


REM Add the path to Node.js and Git to the PATH environment variable
set PATH=%PATH%;C:\Program Files\nodejs;C:\Program Files\Git\cmd

(
echo Changing to the Project folder...
if not exist C:\Project (
    echo C:\Project does not exist!
    exit /b 1
)
cd /d C:\Project || exit /b 1
echo Current directory: %cd%

echo Adding exception for the directory...
git config --global --add safe.directory C:/Project

echo Writing to abc.txt in main Project folder...
echo "I am working" > abc.txt
if errorlevel 1 exit /b %errorlevel%
echo Written successfully.

echo Running git pull...
git pull >> C:\Project\git-log.txt 2>&1

tasklist | find "git.exe" >> C:\Project\git-log.txt
taskkill /F /IM git.exe /T
if errorlevel 1 (
    echo git pull failed. >> C:\Project\git-log.txt
    exit /b %errorlevel%
)
echo git pull successful. >> C:\Project\git-log.txt

echo Running npm install...
npm i
if errorlevel 1 exit /b %errorlevel%
echo npm install successful.

) > C:\Project\deployment-log.txt 2>&1
