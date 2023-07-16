rmdir /s /q build_tmp
mkdir build_tmp
 
::# use python, pip install pyinstaller first
::# find and adjust path for esptool.py
::# 2017-JUN-17, test done, built esptool.exe success
::# REF : https://www.esp32.com/viewtopic.php?t=1029
 
C:\Python27\scripts\pyinstaller ^
--onefile ^
--specpath build_tmp ^
--workpath build_tmp\build ^
--distpath build_tmp\dist ^
C:\Users\user0\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.1.2\tools\esptool\esptool.py


# Output: build_tmp\dist\esptool.exe
 
# Typical esptool.exe location used by Arduino-ESP32:
# C:\Users\%USERNAME%\Documents\Arduino\hardware\espressif\esp32\tools\esptool.exe

pause
