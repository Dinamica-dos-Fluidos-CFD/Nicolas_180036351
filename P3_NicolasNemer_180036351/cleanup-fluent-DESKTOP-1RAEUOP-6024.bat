echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYS Inc\ANSYS Student\v201\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYS Inc\ANSYS Student\v201\fluent\ntbin\win64\tell.exe" DESKTOP-1RAEUOP 50515 CLEANUP_EXITING
if /i "%LOCALHOST%"=="DESKTOP-1RAEUOP" (%KILL_CMD% 11392) 
if /i "%LOCALHOST%"=="DESKTOP-1RAEUOP" (%KILL_CMD% 6024) 
if /i "%LOCALHOST%"=="DESKTOP-1RAEUOP" (%KILL_CMD% 5936)
del "C:\Users\Usuario\Documents\UnB\2020.1_5º Semestre\Dinâmica dos Fluidos\P3_NicolasNemer_180036351\cleanup-fluent-DESKTOP-1RAEUOP-6024.bat"
