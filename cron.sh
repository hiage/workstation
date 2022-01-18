#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Define your installation directory
DIRECTORY=/tmp/workstation

PATH_UNAME=$(which uname)
PATH_DATE=$(which date)
PATH_UPTIME=$(which uptime)

README=$DIRECTORY/README.md

UNAME=$(${PATH_UNAME} -sro)
DATE=$(${PATH_DATE})
UPTIME=$(${PATH_UPTIME})

printf "$echo" > ${README}
printf "## Machine:\n\`\`\`\n$UNAME\n\`\`\`\n" >> ${README}
printf "## Date:\n\`\`\`\n$DATE\n\`\`\`\n" >> ${README}
printf "## Idle:\n\`\`\`\n$UPTIME\n\`\`\`\n" >> ${README}


cd $DIRECTORY && git add -A && git commit -m "auto commit - `date +\"%Y-%m-%d\"`" && git push origin main


