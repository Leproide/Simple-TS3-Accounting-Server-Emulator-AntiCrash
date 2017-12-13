#!/bin/sh

dt=$(date '+%d/%m/%Y %H:%M:%S');
ps auxw | grep ts3server_minimal_runscript.sh | grep -v grep > /dev/null

if [ $? != 0 ]
then
        /home/teamspeak/teamspeak3-server_linux_amd64/./ts3server_minimal_runscript.sh > /dev/null
        echo "$dt Server Crashato" >> /home/teamspeak/script/crash.log
        echo "$dt TS Crashato - riavvio" | mail -s 'TS DOWN!' YOURMAILHERE 2> mail.error
fi
