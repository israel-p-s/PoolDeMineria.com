@echo off
title Instalador PoolDeMineria
chcp 65001
cls
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
start %USERPROFILE%\Desktop\PoolDeMineria.com\xlarig.bat