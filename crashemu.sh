#!/bin/sh

dt=$(date '+%d/%m/%Y %H:%M:%S');
ps auxw | grep AccountingServerEmulator-Linux | grep -v grep > /dev/null

if [ $? != 0 ]
then
        /home/teamspeak/teamspeak3-server_linux_amd64/./AccountingServerEmulator-Linux
        echo "$dt Emulatore crashato" >> /home/teamspeak/script/crash.log
        echo "$dt Emulatore Crashato - riavvio" | mail -s 'TS SERVEREMU DOWN!' YOURMAILHERE 2> mail.error
fi
