:: no testing yet

::C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\tools\python3\3.7.2-post1/python3 -I C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.1.2/tools/upload.py --chip esp8266 --port COM6 --baud 115200 --before default_reset --after hard_reset write_flash 0x0 ESP8266_blink_SOS.ino.bin 


set PY=C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\tools\python3\3.7.2-post1/python3
set INCLUDE=C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.1.2/tools/esptool/esptool.py
::python3

:: dump ROM 1M to file
::esptool.py dump_mem 0x40000000 65536 iram0.bin
%PY% -I %INCLUDE% --port COM6 --baud 115200 flash_id

%PY% -I %INCLUDE% --chip esp8266 --port COM6 --baud 115200 dump_mem 0x40000000 65536 iram0.bi
