echo off
setlocal

:: Setup default messaging system parameters
call ..\set_iot_params.bat

:: Overwrite default values for this particular client
REM set MY_BROKER_URI=bav59
REM set MY_BROKER_PORT=1883
REM set MY_CLIENT_ID=%COMPUTERNAME%_%RAND%
REM set MY_TOPIC_ID=dtvr/mod/001/state
REM set MY_TEXT="%COMPUTERNAME%: My state was good at %DATE% %TIME%"

:: "+" => wild char => any devices
set MY_TOPIC_ID=dtvr/mod/+/state
set MY_CLIENT_ID=mosq_client_sub_ID



echo =============================================
echo PUBLISHING MQTT
echo BROKER:         %MY_BROKER_URI%
echo PORT:           %MY_BROKER_PORT%        
echo CLIENT:         "%MY_CLIENT_ID%" 
echo TOPIC:          "%MY_TOPIC_ID%"
echo TEXT :          %MY_TEXT%

echo =============================================

pushd D:\MyProg\net_srv\mosquitto
:: mosquitto_sub -d -h 192.168.1.8 -p 1883 -i sasha_mosq_sub_ID -t mod/001/state
:: mosquitto_sub -h 192.168.1.8 -p 1883 -i sasha_mosq_sub_ID -t mod/001/state
mosquitto_sub -h %MY_BROKER_URI% -p %MY_BROKER_PORT% -i %MY_CLIENT_ID% -t %MY_TOPIC_ID%

popd

endlocal


REM D:\MyProg\net_srv\mosquitto>mosquitto_sub.exe --help
REM mosquitto_sub is a simple mqtt client that will subscribe to a single topic and print all messages it receives.
REM mosquitto_sub version 1.4.8 running on libmosquitto 1.4.8.

REM Usage: mosquitto_sub [-c] [-h host] [-k keepalive] [-p port] [-q qos] [-R] -t topic ...
                     REM [-C msg_count] [-T filter_out]
                     REM [-A bind_address] [-S]
                     REM [-i id] [-I id_prefix]
                     REM [-d] [-N] [--quiet] [-v]
                     REM [-u username [-P password]]
                     REM [--will-topic [--will-payload payload] [--will-qos qos] [--will-retain]]
                     REM [{--cafile file | --capath dir} [--cert file] [--key file]
                      REM [--ciphers ciphers] [--insecure]]
                     REM [--psk hex-key --psk-identity identity [--ciphers ciphers]]
                     REM [--proxy socks-url]
       REM mosquitto_sub --help

 REM -A : bind the outgoing socket to this host/ip address. Use to control which interface
      REM the client communicates over.
 REM -c : disable 'clean session' (store subscription and pending messages when client disconnects).
 REM -C : disconnect and exit after receiving the 'msg_count' messages.
 REM -d : enable debug messages.
 REM -h : mqtt host to connect to. Defaults to localhost.
 REM -i : id to use for this client. Defaults to mosquitto_sub_ appended with the process id.
 REM -I : define the client id as id_prefix appended with the process id. Useful for when the
      REM broker is using the clientid_prefixes option.
 REM -k : keep alive in seconds for this client. Defaults to 60.
 REM -N : do not add an end of line character when printing the payload.
 REM -p : network port to connect to. Defaults to 1883.
 REM -P : provide a password (requires MQTT 3.1 broker)
 REM -q : quality of service level to use for the subscription. Defaults to 0.
 REM -R : do not print stale messages (those with retain set).
 REM -S : use SRV lookups to determine which host to connect to.
 REM -t : mqtt topic to subscribe to. May be repeated multiple times.
 REM -T : topic string to filter out of results. May be repeated.
 REM -u : provide a username (requires MQTT 3.1 broker)
 REM -v : print published messages verbosely.
 REM -V : specify the version of the MQTT protocol to use when connecting.
      REM Can be mqttv31 or mqttv311. Defaults to mqttv31.
 REM --help : display this message.
 REM --quiet : don't print error messages.
 REM --will-payload : payload for the client Will, which is sent by the broker in case of
                  REM unexpected disconnection. If not given and will-topic is set, a zero
                  REM length message will be sent.
 REM --will-qos : QoS level for the client Will.
 REM --will-retain : if given, make the client Will retained.
 REM --will-topic : the topic on which to publish the client Will.
 REM --cafile : path to a file containing trusted CA certificates to enable encrypted
            REM certificate based communication.
 REM --capath : path to a directory containing trusted CA certificates to enable encrypted
            REM communication.
 REM --cert : client certificate for authentication, if required by server.
 REM --key : client private key for authentication, if required by server.
 REM --ciphers : openssl compatible list of TLS ciphers to support.
 REM --tls-version : TLS protocol version, can be one of tlsv1.2 tlsv1.1 or tlsv1.
                 REM Defaults to tlsv1.2 if available.
 REM --insecure : do not check that the server certificate hostname matches the remote
              REM hostname. Using this option means that you cannot be sure that the
              REM remote host is the server you wish to connect to and so is insecure.
              REM Do not use this option in a production environment.
 REM --psk : pre-shared-key in hexadecimal (no leading 0x) to enable TLS-PSK mode.
 REM --psk-identity : client identity string for TLS-PSK mode.
 REM --proxy : SOCKS5 proxy URL of the form:
           REM socks5h://[username[:password]@]hostname[:port]
           REM Only "none" and "username" authentication is supported.

