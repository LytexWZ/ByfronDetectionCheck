@echo off
mode con: cols=150 lines=30
color 4

:::  _______              ______                                             __              __                            __                         
::: |       \            /      \                                           |  \            |  \                          |  \                        
::: | $$$$$$$\ __    __ |  $$$$$$\  ______    ______   _______          ____| $$  ______   _| $$_     ______    _______  _| $$_     ______    ______  
::: | $$__/ $$|  \  |  \| $$_  \$$ /      \  /      \ |       \        /      $$ /      \ |   $$ \   /      \  /       \|   $$ \   /      \  /      \ 
::: | $$    $$| $$  | $$| $$ \    |  $$$$$$\|  $$$$$$\| $$$$$$$\      |  $$$$$$$|  $$$$$$\ \$$$$$$  |  $$$$$$\|  $$$$$$$ \$$$$$$  |  $$$$$$\|  $$$$$$\
::: | $$$$$$$\| $$  | $$| $$$$    | $$   \$$| $$  | $$| $$  | $$      | $$  | $$| $$    $$  | $$ __ | $$    $$| $$        | $$ __ | $$  | $$| $$   \$$
::: | $$__/ $$| $$__/ $$| $$      | $$      | $$__/ $$| $$  | $$      | $$__| $$| $$$$$$$$  | $$|  \| $$$$$$$$| $$_____   | $$|  \| $$__/ $$| $$      
::: | $$    $$ \$$    $$| $$      | $$       \$$    $$| $$  | $$       \$$    $$ \$$     \   \$$  $$ \$$     \ \$$     \   \$$  $$ \$$    $$| $$      
:::  \$$$$$$$  _\$$$$$$$ \$$       \$$        \$$$$$$  \$$   \$$        \$$$$$$$  \$$$$$$$    \$$$$   \$$$$$$$  \$$$$$$$    \$$$$   \$$$$$$  \$$      
:::           |  \__| $$                                                                                                                              
:::            \$$    $$                                                                                                                              
:::             \$$$$$$                                                                                                                
:::
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
)
timeout /t 2 /nobreak > NUL
echo Byfron BAN detector loaded
echo -
echo This tool will check if you have been detected by byfron
echo -
echo WARNING This tool can only detect if you are detected in WebClient, it won't work if you use Microsoft Roblox app or Emulators
echo -
echo Scripted by LytexWZ#0
echo -
pause
CLS
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
)
echo Checking logs...
timeout /t 7 /nobreak > NUL
echo Checking your account...
timeout /t 3 /nobreak > NUL
echo Checking your client...
timeout /t 5 /nobreak > NUL
echo Analyzing logs...
timeout /t 7 /nobreak > NUL
CLS
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
)
setlocal

set "logPath=%USERPROFILE%\AppData\Local\Roblox\logs\archive"

if not exist "%logPath%" (
    echo Roblox client not found! You are either not detected or your roblox installation is not correct.
    echo -
    pause
    goto :end
)

for %%f in ("%logPath%\*") do (
    echo Byfron logs detected! You are cooked fr, you will get banned soon if you have not been banned already :(
    echo -
    pause
    goto :end
)

echo You have not been detected, -yet- :)
echo -
pause
:end
endlocal
