

:: testing done, ok
::C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\tools\python3\3.7.2-post1/python3 -I C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.1.2/tools/upload.py --chip esp8266 --port COM6 --baud 115200 --before default_reset --after hard_reset write_flash 0x0 ESP8266_blink_SOS.ino.bin 


set PY=C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\tools\python3\3.7.2-post1/python3
set INCLUDE=C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.1.2/tools/upload.py 
::python3


%PY% -I %INCLUDE% --chip esp8266 --port COM6 --baud 115200 --before default_reset --after hard_reset write_flash 0x0 ESP8266_blink_SOS.ino.bin
