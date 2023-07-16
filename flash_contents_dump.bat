

:: testing done, ok
::C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\tools\python3\3.7.2-post1/python3 -I C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.1.2/tools/upload.py --chip esp8266 --port COM6 --baud 115200 --before default_reset --after hard_reset write_flash 0x0 ESP8266_blink_SOS.ino.bin 


set PY=C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\tools\python3\3.7.2-post1/python3
::set INCLUDE=C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.1.2\tools\esptool\esptool.py

set esp=C:\Users\user0\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.7_qbz5n2kfra8p0\LocalCache\local-packages\Python37\Scripts\esptool.exe

::python3

:: uses compiled python script as esptool.exe to burn esp8266
:: last update, 2023-07-16, testing ok

set BAUDRATE=115200
::set BAUDRATE=460800
set COMPORT=COM6


%esp% --chip esp8266 --port %COMPORT% --baud %BAUDRATE% read_mac
pause

%esp% --chip esp8266 --port %COMPORT% --baud %BAUDRATE% flash_id
pause

::%esp% --chip esp8266 --port %COMPORT% --baud %BAUDRATE% erase_flash
::pause

::dump whole flash chip
::%esp% --chip esp8266 --port %COMPORT% --baud %BAUDRATE% read_flash 0 ALL flash_contents.bin

:: write back, firmware SOS, testing, sucess
::%esp% --chip esp8266 --port %COMPORT% --baud %BAUDRATE% write_flash 0 flash_contents.bin


