@echo off

(
echo Changing to the Project folder...
cd /d C:\Project
echo Current directory: %cd%

echo Updating Project-1...
cd Project-1
echo Current directory: %cd%
git pull
npm install
cd ..

echo Updating Project-2...
cd Project-2
echo Current directory: %cd%
git pull
npm install
cd ..

echo Updating main Project...
echo Current directory: %cd%
git pull
npm i
npm start
) > C:\Project\deployment-log.txt 2>&1

REM No need to pause as this is not being run interactively
