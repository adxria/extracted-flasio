@echo off
setlocal
cd /d "%~dp0"
set "nativeSystem=%SystemRoot%\System32"
if exist "%SystemRoot%\Sysnative\regsvr32.exe" set "nativeSystem=%SystemRoot%\Sysnative"
if not exist "%SystemRoot%\SysWOW64\regsvr32.exe" goto unsupported
"%SystemRoot%\SysWOW64\regsvr32.exe" /s "%~dp0ILWASAPI2ASIO.dll"
if errorlevel 1 goto failed
"%nativeSystem%\regsvr32.exe" /s "%~dp0ILWASAPI2ASIO_x64.dll"
if errorlevel 1 goto failed
echo FL Studio ASIO registered for 32-bit and 64-bit audio apps.
echo Keep this folder in its current location. Restart your audio app.
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
