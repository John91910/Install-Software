@echo off
:zoom
cls
set /p user_input=Would you like to install zoom? (y/n):
if %user_input%==y goto Yes
if %user_input%==n goto No

:Yes
winget install -e --id Zoom.Zoom

:No
goto :chrome

:chrome
cls
set /p user_input=Would you like to install chrome? (y/n):
if %user_input%==y goto Yes
if %user_input%==n goto No

:Yes
winget install -e --id Google.Chrome

pause

:No
goto :teamviewer

:teamviewer
cls
set /p user_input=Would you like to install team viewer? (y/n):
if %user_input%==y goto Yes
if %user_input%==n goto No

:Yes
winget install -e --id TeamViewer.TeamViewer

pause

:No
goto :vlc

:vlc
cls
set /p user_input=Would you like to install vlc? (y/n):
if %user_input%==y goto Yes
if %user_input%==n goto No

:Yes
winget install -e --id VideoLAN.VLC

pause

:No
goto :ccleaner

:ccleaner
cls
set /p user_input=Would you like to install ccleaner? (y/n):
if %user_input%==y goto Yes
if %user_input%==n goto No

:Yes
winget install -e --id Piriform.CCleaner

:No
goto :drive

:drive
cls
set /p user_input=what drive is your usb in to install office? (d,e,f,g or exit?):
if %user_input%==d goto D
if %user_input%==e goto E
if %user_input%==f goto F
if %user_input%==g goto G
if %user_input%==exit goto X

:D
D:
cd Install_Files 
cd Office_2019
install.bat


:E
E:
cd Install_Files 
cd Office_2019
install.bat


:F
F:
cd Install_Files 
cd Office_2019
install.bat

:G
G: 
cd Install_Files 
cd Office_2019
install.bat


:X
echo program will now exit
echo Created by: El Pollito
pause
exit

