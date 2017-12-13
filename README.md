# Simple-TS3-Accounting-Server-Emulator-AntiCrash
You need  AccountingServerEmulator-Linux - Only anticrash script on this repo!

Remember to edit the script/cronjob with your mail address and your TS3 folder path

Make 2 cronjob:
```
crontab -e
```

```
*/2 * * * * /home/teamspeak/script/crash.sh

*/2 * * * * /usr/bin/screen -dmS ts3emu /home/teamspeak/script/crashemu.sh
```
