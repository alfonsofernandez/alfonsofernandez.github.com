#!/bin/bash          
###
### Sample background worker script
### for linuxquestions.org written
### by Florian Harbich (user doc.nice)
###
### Free for use or modification, even if
### useless in this variant... 
###

TERMINATORFILE="/var/run/backgroundworker.ctl"
GOON=1
while [ $GOON ]; do
[ -f "$TERMINATORFILE" ] && GOON=0
# do your repeated stuff instead of logger syslog sample here
jekyll
sleep 1
done
rm -f "$TERMINATORFILE"

