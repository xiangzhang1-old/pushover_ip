#!/bin/bash
logfile=/root/pushover_ip.log
date >> $logfile
echo 'entering sleep' >> $logfile
sleep 30
token=aewmkpfow22sfe8wrsp3sprwc6nb54
user=ukunedzw77znv3n794vpnhg5pb3vz3
ip=`hostname -I`
date=`date`
curl -v -s --form-string "token=$token" --form-string "message=booting linux, ip $ip, date $date" --form-string "user=$user" https://api.pushover.net/1/messages.json -o $logfile
echo 'done' >> $logfile
