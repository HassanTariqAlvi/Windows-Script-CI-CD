@echo off
echo chal oye-2 > C:\xyz.txt
call C:\after-install.bat

REM Change the directory to the "Project" folder
cd C:\Project

REM Update and install dependencies for Project-1
cd Project-1
echo Updating Project-1...
git pull
npm install
echo chal oye-2 > C:\p-1.txt
cd ..

REM Update and install dependencies for Project-2
cd Project-2
echo Updating Project-2...
git pull
npm install
echo chal oye-2 > C:\p-2.txt
cd ..

REM Update and start the main Project
echo Updating main Project...
git pull
npm I
echo chal oye-2 > C:\p-3.txt
npm start

REM Pause to keep the command prompt window open
pause
