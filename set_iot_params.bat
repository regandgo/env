
SET /A RAND=%RANDOM%%%100+1

::set MY_BROKER_URI=%IOT_BROKER_IP%  ## USE it when run as a WIN Service
set MY_BROKER_URI=bav58
set MY_BROKER_PORT=1883

set MY_CLIENT_ID=%COMPUTERNAME%_%RAND%
set MY_TOPIC_ID=dtvr/mod/001/state
set MY_TEXT="%COMPUTERNAME%: My state was good at %DATE% %TIME%"


rem echo ##############  MY_CLIENT_ID = %MY_CLIENT_ID%
