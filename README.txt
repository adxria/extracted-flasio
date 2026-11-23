FL STUDIO ASIO - EXTRACTED DRIVER PACKAGE

Source: flstudio_win64_26.1.7.5654.exe

This FL Studio release embeds the ASIO component directly; it does not
contain a separate FL ASIO setup EXE. This ZIP contains its two original
driver DLLs and two original registration batch files, unchanged.
INSTALL.cmd and UNINSTALL.cmd are added convenience scripts.

INSTALL (64-bit Windows)
1. Extract this entire ZIP to a permanent folder, for example
   C:\Audio Drivers\FL Studio ASIO. Do not run inside the ZIP.
2. Right-click INSTALL.cmd and select "Run as administrator".
3. Restart your audio application and select "FL Studio ASIO" as its driver.
4. Keep the extracted folder in place while the driver is installed.

REMOVE
Right-click UNINSTALL.cmd and select "Run as administrator".
After successful removal, the folder can be deleted.

No FL Studio installation is required by these scripts. The scripts only
register or unregister the included drivers. They have not been run on
the source computer, and no drivers were installed during extraction.

Verification: the source installer's stored CRC32 matched its contents;
both DLLs were decompressed successfully and their PE architectures and
DllRegisterServer/DllUnregisterServer exports were checked. Installation
has not been tested on this computer.
