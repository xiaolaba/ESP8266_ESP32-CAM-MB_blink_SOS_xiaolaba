
cls
@echo off

@echo.
@echo USAGE: b com#
@echo example: b com8, to burn rom image to flash
@echo ensure your ESP module is in bootload mode, how to do that:
@echo hold RESET button, hold FLASH button, release RESET button, release FLASH button, done.




@echo.
if [%1]==[] goto no_com

REM :: https://github.com/igrr/esptool-ck
::copy esptool_exe esptool.exe /y
::esptool.exe -vv -cp com%1 -cd nodemcu -cc esp8266 -ca 0x00000 -cf 0x00000.bin -ca 0x10000 -cf 0x10000.bin 
::goto eof


set BLINK_BIN=ESP8266_blink_SOS.bin
REM :: https://github.com/espressif/esptool/releases
copy esptool4.8.1_exe esptool.exe /y

::esptool.exe --chip esp8266 merge_bin 0x00000 0x00000.bin 0x10000 0x10000.bin --output conbined.bin
::esptool.exe --chip esp8266 --baud 921600 --port com%1 write_flash 0x00000 conbined.bin

esptool.exe --chip esp8266 --baud 921600 --port com%1 write_flash 0x00000 %BLINK_BIN%

goto eof


:no_com
@echo nothing is done!!!!!!
@echo need to specify com#, try again.

:eof
rem exit /B 1

