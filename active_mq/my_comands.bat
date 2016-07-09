
:: pushd D:\MyProg\net_srv\apache_activemq

:: *** START ****
:: bin\activemq.bat start

:: Typing the following will run an ActiveMQ Broker using the out of the box configuration in the foreground
:: bin/activemq console


:: *** STOP ****
:: bin\activemq-admin.bat stop

:: *** STATISTIC ****
REM activemq-admin list
REM activemq-admin query

REM Display useful statistics for all registered brokers in the default JMX context.
REM activemq-admin bstat
REM activemq-admin bstat localhost
REM Display useful statistics for the registered broker 'localhost'.

REM activemq-admin dstat
REM Display useful statistics for all destinations on the broker in the default JMX context.
REM activemq-admin dstat topics
REM Display useful statistics for the Topics that currently exist on the Broker.



:: *** BROWSE ****
REM activemq-admin browse --amqurl tcp://localhost:61616 TEST.FOO
REM Prints the JMS message header, custom message header, and message body of the messages in the queue 'TEST.FOO'
REM activemq-admin browse --amqurl tcp://localhost:61616 -Vheader,body TEST.FOO
REM Prints the JMS message header and message body of the messages in the queue 'TEST.FOO'
REM activemq-admin browse --amqurl tcp://localhost:61616 -Vheader --view custom:MyCustomField TEST.FOO TEST.BAR
REM Prints all the JMS message header and the custom field 'MyCustomField' of the messages in the queue 'TEST.FOO' and 'TEST.BAR'.
REM activemq-admin browse --amqurl tcp://localhost:61616 --msgsel "JMSMessageID='*:10',JMSPriority>5" TEST.FOO
REM Prints all the attributes of the messages in the queue 'TEST.FOO' that has a JMSMessageID 
REM that matches the wildcard query *:10 and has a JMSPriority greater than 5.

REM *** PURGE ****
REM activemq-admin purge FOO.BAR
REM Delete all the messages in queue FOO.BAR
REM activemq-admin purge --msgsel "JMSMessageID='*:10',JMSPriority>5" FOO.*
REM Delete all the messages in the destinations that matches FOO.* and has a JMSMessageID in", the header field that matches the wildcard *:10, and has a JMSPriority field > 5 in the", queue FOO.BAR
REM To use wildcard queries, the field must be a string and the query enclosed in ''





