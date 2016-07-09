@echo off

:: The program can't start because MSVCR120D.dll is missing from your computer

:: *** DEBUGGERS ***
:: D:\sdk_e\autoit_v3\SciTe\SciTE.exe
:: 
:: D:\MyProg\utils\SysinternalsSuite2016\Dbgview.exe

:: *** HELP ***
:: D:\sdk_e\autoit_v3\AutoIt.chm


:: *** COMPILATION ***
:: D:\sdk_e\autoit_v3\Aut2Exe\Aut2exe.exe /in matahari.au3 /out matahari.exe
:: REM D:\sdk_e\autoit_v3\Aut2Exe\Aut2exe.exe /in matahari.au3 /out matahari.exe /x64

:: *** RUN NOTEPAD++ ***
:: D:\sdk_e\autoit_v3\AutoIt3.exe $(FULL_CURRENT_PATH)
:: D:\sdk_e\autoit_v3\SciTe4Autoit\SciTE.exe $(FULL_CURRENT_PATH)

:: *** RUN ***
REM D:\sdk_e\autoit_v3\AutoIt3.exe D:\my_wrk_prj\IoT\autoit_paho\matahari.au3
REM D:\sdk_e\autoit_v3\AutoIt3_x64.exe D:\my_wrk_prj\IoT\autoit_paho\matahari.au3

:: D:\my_wrk_prj\IoT\autoit_paho\my_iot.exe                              // AutoI  Client
:: "D:\my_wrk_prj\IoT\paho\paho-mqtt_c\Windows Build\Debug\my_mqtt.exe"  // MSVS-C Client


:: *** BROKERS ***
:: D:\MyProg\net_srv\mosquitto\mosquitto.exe -v
:: D:\MyProg\net_srv\apache_activemq\bin\activemq.bat start
:: pushd D:\MyProg\net_srv\apache_activemq
:: bin\activemq.bat start
:: http://localhost:8161/admin/


:: Other MQTT clients
:: D:\MyProg\net_srv\mosquitto\mosquitto_pub.exe
:: D:\MyProg\net_srv\mosquitto\mosquitto_sub.exe


REM =====================================================================
:: *** MS SPY++
:: D:\MyProg\Development\Lang\msvs2013\Common7\Tools\


REM =====================================================================
:: *** REMOTE EXECUTE
REM D:\MyProg\utils\SysinternalsSuite2016\psexec notepad

rem Примеры
REM Эта команда вызывает интерактивный интерфейс командной строки в системе \\marklap:
REM psexec \\marklap cmd

REM Эта команда запускает в удаленной системе программу 
REM IpConfig с параметром /all и выводит полученные данные 
REM на экран локальной системы:
REM psexec \\marklap ipconfig /all

REM Эта команда копирует программу test.exe в удаленную систему и 
REM выполняет ее в интерактивном режиме.
REM psexec \\marklap -c test.exe

REM Если в удаленной системе такая программа уже установлена и 
REM находится не в системном каталоге, укажите полный путь к этой программе
REM psexec \\marklap c:\bin\test.exe

REM Эта команда запускает в интерактивном режиме из системной учетной записи 
REM программу Regedit для просмотра данных разделов реестра SAM и SECURITY:
REM psexec -i -d -s c:\windows\regedit.exe

REM Эта команда используется для вызова программы Internet Explorer 
REM от имени пользователя с ограниченными правами:
REM psexec -l -d "c:\program files\internet explorer\iexplore.exe"

:: blocking call
rem call Autoit3Help.exe
:: NON-blocking
rem start Autoit3Help.exe
rem start D:\sdk_e\autoit_v3\SciTe\SciTE.exe
rem D:\sdk_e\autoit_v3\KodaFormDesigner\FD.ex
rem D:\sdk_e\autoit_v3\Aut2Exe\Aut2exe_x64.exe
rem D:\sdk_e\autoit_v3\SciTe\..\Aut2exe\aut2exe.exe
rem autoit.exe D:\my_wrk_prj\IoT\autoit_paho\matahari.au3

REM pushd %MY_WORK_PATH%


REM setlocal

:BEGIN



SET MY_ENV_NAME=IoT


if "%COMPUTERNAME%" == "LTPT003-01" (
      set MY_AUTOIT_PATH=D:\sdk_e\autoit_v3
      set MY_WORK_PATH=D:\my_wrk_prj\iot\matahari
) else if "%COMPUTERNAME%" == "ARCHIVARIUS" (
      set MY_AUTOIT_PATH=D:\sdk_e\######autoit_v3_TODO#####
      set MY_WORK_PATH=D:\users\sasha\iot
) else if "%COMPUTERNAME%" == "BAV58" (
      set MY_AUTOIT_PATH=D:\sdk_e\autoit_v3
      set MY_WORK_PATH=D:\my_wrk_prj\autoit\my_dektec_proj
) else if "%COMPUTERNAME%" == "BAV57" (
      set MY_AUTOIT_PATH=D:\sdk_e\autoit_v3
      set MY_WORK_PATH=D:\my_wrk_prj\autoit\my_dektec_proj
) else (
      echo Error! Unknown PC. Check environment...
      pause
)

REM set MQTT_C_CLIENT_TRACE=ON
REM set MQTT_C_CLIENT_TRACE_LEVEL=MAXIMUM

call set_iot_params.bat

::================================================
:: PING the broker, to see if it is alive
:: Set [ /M => system wide HKEY_LOCAL_MACHINE] Environment
rem SETX /M IOT_BROKER_IP localhost
rem SETX /M IOT_BROKER_IP 172.16.6.1
ping -n 2 %MY_BROKER_URI%

set PATH=%PATH%;%MY_AUTOIT_PATH%


REM pushd %MY_WORK_PATH%


echo **********************************************************************************
echo  %MY_ENV_NAME% environment setup complete!
echo **********************************************************************************



:EXIT_SCRIPT
@title %MY_ENV_NAME% Environment: D:\my_wrk_prj\autoit\_env_
set MY_

COLOR 1f
REM endlocal
exit /b 0



