# ESP8266_ESP32-CAM-MB_blink_SOS_xiaolaba  
use ESP32-CAM-MB as the programmer for ESP8266 (ESP-S module is actually ESP8285)  

### hardware for tseting   
1. ESP-S (ESP8285 chip)    
2. ESP32-CAM-MB and  
3. adapter own build
4. uses p.bat to burn code, red LED of adapter (GPIO-2) will be blinking morse code of SOS

PS. SOS, 3 shorter blinkings, 3 longer blinkings then 3 shorter blinkings.  

overview of circuitry  
![esp8266_programmer_ESP32-CAM-MB_design.JPG](esp8266_programmer_ESP32-CAM-MB_design.JPG)  

connected to target ESP-S  
![esp8266_programmer_action.JPG](esp8266_programmer_action.JPG)  

adapter and wiring  
![esp8266_programmer_ESP32-CAM-MB_interface.JPG](esp8266_programmer_ESP32-CAM-MB_interface.JPG)  

adapter, programmer port pin assignment,  
red LED of adapter is connected to GPIO-2 or IO-2 for short,  
![esp8266_programmer_pinout.JPG](esp8266_programmer_pinout.JPG)

esp8266 programmer and bootload mode  
![esp8266_programmer_interface.JPG](esp8266_programmer_interface.JPG)  
![esp8266_programmer_circuit.JPG](esp8266_programmer_circuit.JPG)  


### software, p.bat
uses arduino IDE and esptool.py to burn code, no need manual reset to bootload mode

### software, b.bat, c.bat d.bat
uses esptool.exe to burn code, need manual reset to bootload mode  
```
1. hold IO-0/boot button,  
2. press RST button,  
3. release RST button,  
4. release IO-0/boot button

esp8266 should be in bootload mode and ready to burn code.  
```

### software, dump_flash_contents.bat
read the SPI flash chip, 4Mb szie   
write back the bin to esp8266, it is works.  
compiled python script as esptool.exe, !!! not the one enclosed in the repo. !!! 


```
Update by xiaolaba, 2019-MAR-02

// ESP8266_blink_SOS
// 2019-MAR-02

hardware : 
ESP-S (ESP8285 chip)
ESP32-CAM-MB and adaptor own build           


automatic bootload and burn code:
uses ESP32-CAM-MB and auto rest circuitry
 p.bat




manual RESET to burn code:
Burn rom image:
  hold GPIO-0 down, prese RESET, releasr RESET, release GPIO-0, MCU in flash mode
  open dosbox.bat, under command line, specifiy COM#
  c.bat : to clear flash
  b.bat : to burn in rom images
  
  example : c 12
  explain clear flash via COM PORT 12

Run this ESP8266, up on burn in is done
  power up, builtin LED will be flash SOS

optional:

Remark:

special note:
  PL2303 is not working for 26MHZ & boot time 74880 baud.
  CH340G / CP2102 is fine.
```



ref:  
https://github.com/xiaolaba/ESP32-CAM_V1.6_V1.9_MB  
https://github.com/xiaolaba/ESP8266_blink_SOS_xiaolaba  
