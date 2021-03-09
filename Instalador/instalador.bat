@echo off
title Instalador PoolDeMineria
chcp 65001
IF exist %USERPROFILE%\Desktop\PoolDeMineria.com (
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com
)
IF not exist %USERPROFILE%\Desktop\PoolDeMineria.com (
    mkdir %USERPROFILE%\Desktop\PoolDeMineria.com
)
cls
echo BIENVENIDO AL INSTALADOR DE MINERO DE SCALA PARA SRBMINER
echo _______________________________________________________
echo.
echo Para empezar a minar, necesitas un monedero.
echo 1) Si deseas instalar el monedero
echo 2) Si ya lo tienes instalado y deseas continuar
set/p monedero=
IF %monedero%==1 (
    echo Descargando https://github.com/scala-network/scala-electron-gui/releases/download/v2.0.0/windows-x64-scala-electron-wallet-setup-2.0.0-installer.exe
    echo Espera un momento a que termine la descarga
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/scala-network/scala-electron-gui/releases/download/v2.0.0/windows-x64-scala-electron-wallet-setup-2.0.0-installer.exe', '%USERPROFILE%\Desktop\PoolDeMineria.com\windows-x64-scala-electron-wallet-setup-2.0.0-installer.exe')"
    powershell -Command "Invoke-WebRequest https://github.com/scala-network/scala-electron-gui/releases/download/v2.0.0/windows-x64-scala-electron-wallet-setup-2.0.0-installer.exe -OutFile %USERPROFILE%\Desktop\PoolDeMineria.com\windows-x64-scala-electron-wallet-setup-2.0.0-installer.exe"
    echo Puedes proceder con la instalación del monedero antes de continuar
    start %USERPROFILE%\Desktop\windows-x64-scala-electron-wallet-setup-2.0.0-installer.exe
    echo Ahora procede a la instalación del monedero antes de continuar
)
echo.
echo ¿Deseas usar el XLARig o el SRBMiner?
echo 1)XLARig
echo 2)SRBMiner
set/p minero=
IF %minero%== 1 (
    echo Descargando https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-win64.zip
    echo Espera un momento a que termine la descarga
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-win64.zip', '%USERPROFILE%\Desktop\PoolDeMineria.com\XLArig-v5.2.2-win64.zip')"
    powershell -Command "Invoke-WebRequest https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-win64.zip -OutFile %USERPROFILE%\Desktop\PoolDeMineria.com\XLArig-v5.2.2-win64.zip"
    powershell -command "Expand-Archive -Force '%USERPROFILE%\Desktop\PoolDeMineria.com\XLArig-v5.2.2-win64.zip' '%USERPROFILE%\Desktop\PoolDeMineria.com\'"
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\config_example.cmd 
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\config_example.json 
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\guided-setup.bat 
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\readme_win.txt
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\XLARig-v5.2.2-win64.zip
    cls
    start xlarig.bat
)
IF %minero%== 2 (
    echo Descargando https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-win64.zip
    echo Espera un momento a que termine la descarga
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-win64.zip', '%USERPROFILE%\Desktop\PoolDeMineria.com\XLArig-v5.2.2-win64.zip')"
    powershell -Command "Invoke-WebRequest https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-win64.zip -OutFile %USERPROFILE%\Desktop\PoolDeMineria.com\XLArig-v5.2.2-win64.zip"
    powershell -command "Expand-Archive -Force '%USERPROFILE%\Desktop\PoolDeMineria.com\XLArig-v5.2.2-win64.zip' '%USERPROFILE%\Desktop\PoolDeMineria.com\'"
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\config_example.cmd 
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\config_example.json 
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\guided-setup.bat 
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\readme_win.txt
    DEL %USERPROFILE%\Desktop\PoolDeMineria.com\XLARig-v5.2.2-win64.zip
    cls
    start xlarig.bat
)