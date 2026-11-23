@echo off
setlocal
cd /d "%~dp0"
set "nativeSystem=%SystemRoot%\System32"
if exist "%SystemRoot%\Sysnative\regsvr32.exe" set "nativeSystem=%SystemRoot%\Sysnative"
if not exist "%SystemRoot%\SysWOW64\regsvr32.exe" goto unsupported
"%SystemRoot%\SysWOW64\regsvr32.exe" /s /u "%~dp0ILWASAPI2ASIO.dll"
if errorlevel 1 goto failed
"%nativeSystem%\regsvr32.exe" /s /u "%~dp0ILWASAPI2ASIO_x64.dll"
if errorlevel 1 goto failed
echo FL Studio ASIO unregistered. You may now remove this folder.
echo.
pause
exit /b 0
:failed
echo.
echo Registration failed. Right-click this script and choose Run as administrator.
pause
exit /b 1
:unsupported
echo This package requires 64-bit Windows.
pause
exit /b 1
