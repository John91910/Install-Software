@echo off

:zoom
cls
set /p "user_input=Would you like to install zoom? (y/n): "
if /i "%user_input%"=="y" (
    winget install -e --id Zoom.Zoom
)

:chrome
cls
set /p "user_input=Would you like to install chrome? (y/n): "
if /i "%user_input%"=="y" (
    winget install -e --id Google.Chrome
)

:teamviewer
cls
set /p "user_input=Would you like to install team viewer? (y/n): "
if /i "%user_input%"=="y" (
    winget install -e --id TeamViewer.TeamViewer
)

:vlc
cls
set /p "user_input=Would you like to install vlc? (y/n): "
if /i "%user_input%"=="y" (
    winget install -e --id VideoLAN.VLC
)

:ccleaner
cls
set /p "user_input=Would you like to install ccleaner? (y/n): "
if /i "%user_input%"=="y" (
    winget install -e --id Piriform.CCleaner
)

:drive
cls
set /p "user_input=What drive is your USB in to install office? (d, e, f, g or exit?): "
if /i "%user_input%"=="d" goto D
if /i "%user_input%"=="e" goto E
if /i "%user_input%"=="f" goto F
if /i "%user_input%"=="g" goto G
if /i "%user_input%"=="exit" goto X

:D
D:
cd /d D:\Install_Files\Office_2019
install.bat
goto end

:E
E:
cd /d E:\Install_Files\Office_2019
install.bat
goto end

:F
F:
cd /d F:\Install_Files\Office_2019
install.bat
goto end

:G
G:
cd /d G:\Install_Files\Office_2019
install.bat
goto end

:X
echo Program will now exit.
echo Created by: El Pollito
pause
exit

:end
pause
