@echo off
chcp 65001
cls
echo.
echo BIENVENIDO AL INSTALADOR DE MINERO DE SCALA PARA SRBMINER
echo _______________________________________________________
echo.
echo.
echo.
echo Comprobando que estás ejecutando el instalador en la carpeta del minero SRBMiner-MULTI.exe
echo.
IF EXIST SRBMiner-MULTI.exe (
    echo COMPROBADO, SEGUIMOS CON LA INSTALACIÓN
) ELSE  (
    echo NO SE HA ENCONTRADO EL MINERO
    echo COMPRUEBA QUE HAS DESCARGADO EL MINERO SRBMiner-MULTI.exe
    echo COMPRUEBA QUE ESTÁS EJECUTANDO ESTE INSTALADOR EN LA MISMA CARPETA QUE EL MINERO SRBMiner-MULTI.exe
    echo PARA MÁS INFORMACIÓN, DIRIGETE A discord.pooldemineria.com
    echo HAZ CLICK EN CUALQUIER TECLA PARA CERRAR ESTA VENTANA
    pause>nul
    exit
)
echo Inserta tu dirección de Scala
set/p direccion=
echo Inserta el puerto
echo 3333 - Si tienes un procesador de bajo rendimiento
echo 5555 - Si tienes un procesador de rendimiento medio
echo 7777 - Si tienes un procesador de alto rendimiento
echo 8888 - Para minar en Solo
set/p puerto= 
echo Dale un nombre a tu minero 
set/p nombre= 
echo setx GPU_MAX_HEAP_SIZE 100	> minar.bat
echo setx GPU_MAX_USE_SYNC_OBJECTS 1 >> minar.bat
echo setx GPU_SINGLE_ALLOC_PERCENT 100 >> minar.bat
echo setx GPU_MAX_ALLOC_PERCENT 100 >> minar.bat
echo setx GPU_MAX_SINGLE_ALLOC_PERCENT 100 >> minar.bat
echo setx GPU_ENABLE_LARGE_ALLOCATION 100 >> minar.bat
echo setx GPU_MAX_WORKGROUP_SIZE 1024 >> minar.bat
echo @echo off >> minar.bat
echo cd %~dp0 >> minar.bat
echo cls >> minar.bat
echo SRBMiner-MULTI.exe --algorithm panthera --pool scala.pooldemineria.com:%puerto% --wallet %direccion% --password %nombre% >> minar.bat
echo pause >> minar.bat
start minar.bat
DEL minar-con-srbminer.bat












echo Inserta tu dirección de Scala
    set/p direccion=
    echo Inserta el puerto
    echo 3333 - Si tienes un procesador de bajo rendimiento
    echo 5555 - Si tienes un procesador de rendimiento medio
    echo 7777 - Si tienes un procesador de alto rendimiento
    echo 8888 - Para minar en Solo
    set/p puerto= 
    echo Dale un nombre a tu minero 
    set/p nombre= 
    echo @echo off > %USERPROFILE%\Desktop\PoolDeMineria.com\minar.bat
    echo xlarig.exe --donate-level 0 -o scala.pooldemineria.com:%puerto% -u %direccion% -p %nombre% -a panthera -k >> %USERPROFILE%\Desktop\PoolDeMineria.com\minar.bat
    echo pause >> %USERPROFILE%\Desktop\PoolDeMineria.com\minar.bat
    start %USERPROFILE%\Desktop\PoolDeMineria.com\minar.bat