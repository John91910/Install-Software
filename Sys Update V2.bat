@echo off

:drivers
cls
set /p "user_input=What drive is your USB in to install Driver Updates? (d, e, f, g, or exit?): "
if /i "%user_input%"=="d" goto version
if /i "%user_input%"=="e" goto version
if /i "%user_input%"=="f" goto version
if /i "%user_input%"=="g" goto version
if /i "%user_input%"=="exit" goto X

:version
cls
set /p "user_input=What model is the device? (dell, hp, lenovo, or exit?): "
if /i "%user_input%"=="dell" goto Dell
if /i "%user_input%"=="hp" goto HP
if /i "%user_input%"=="lenovo" goto Lenovo
if /i "%user_input%"=="exit" goto X

:Dell
cd Dell
start Dell_Sys_Up.exe
goto end

:HP
cd HP
start HP_Sys_Up.exe
goto end

:Lenovo
cd Lenovo
start Lenovo_Sys_Up.exe
goto end

:X
echo Program will now exit.
echo Created by: El Pollito
pause
exit

:end
pause
