@echo off

(
echo Changing to the Project folder...
cd /d C:\Project
if errorlevel 1 exit /b %errorlevel%
echo Current directory: %cd%

echo Writing to abc.txt in main Project folder...
echo "I am working" > abc.txt
if errorlevel 1 exit /b %errorlevel%
echo Written successfully.

) > C:\Project\deployment-log.txt 2>&1
