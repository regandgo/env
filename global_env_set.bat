::*****************************************************************
::
:: AHTUNG!
:: Must run as Administrator
:: So, call it from shortcut: ShortcutGlobEnv with advanced setting property changed.
:: 
:: Set [ /M => system wide HKEY_LOCAL _MACHINE] Environment
:: for IoT Matahari project
::*****************************************************************
echo off

echo Set System Global environmet

rem SETX /M IOT_BROKER_IP localhost
SETX /M IOT_BROKER_IP 172.16.6.1

echo Set System Global environmet:
echo IOT_BROKER_IP = %IOT_BROKER_IP%
echo Testing %IOT_BROKER_IP% with ping...
ping -n 2 %IOT_BROKER_IP%
pause

