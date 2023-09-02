@echo off
:drivers
cls
set /p user_input=what drive is your usb in to install Driver Updates? (d,e,f,g or exit?):
if %user_input%==d goto D
if %user_input%==e goto E
if %user_input%==f goto F
if %user_input%==g goto G
if %user_input%==exit goto X

:D
D:
goto version
:E
E:
goto version
:F
F:
goto version
:G
G: 
goto version

:version
cls
set /p user_input=what model is the device? (dell, hp, lenovo or exit?):
if %user_input%==dell goto D
if %user_input%==hp goto H
if %user_input%==lenovo goto L
if %user_input%==exit goto X

:D
cd Dell
start Dell_Sys_Up.exe
pause
exit

:H
cd HP
start HP_Sys_Up.exe
pause
exit

:L
cd Lenovo
start Lenovo_Sys_Up.exe
pause
exit


:X
echo program will now exit
echo Created by: El Pollito
pause
exit

