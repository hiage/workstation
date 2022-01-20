#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Define your installation directory
#DIRECTORY=/tmp/workstation/
DIRECTORY=/home/runner/work/workstation/workstation

PATH_UNAME=$(which uname)
PATH_DATE=$(which date)
PATH_UPTIME=$(which uptime)
PATH_ECHO=$(which echo)

README=$DIRECTORY/README.md

UNAME=$(${PATH_UNAME} -srmon)
DATE=$(${PATH_DATE})
UPTIME=$(${PATH_UPTIME})
POWEREDBY=$($PATH_ECHO 'Powered by [Github Actions](https://github.com/features/actions)')

printf "$echo" > ${README}
printf "$POWEREDBY\n\n" >> ${README}
bash -c 'echo "[![Auto commit](https://github.com/gyfary/workstation/workflows/Auto%20commit/badge.svg)](https://github.com/gyfary/workstation/actions?query=workflow%3A%22Auto+commit%22)"' >> ${README}
printf "\n## Machine:\n\`\`\`\n$UNAME\n\`\`\`\n" >> ${README}
printf "## Date:\n\`\`\`\n$DATE\n\`\`\`\n" >> ${README}
printf "## Idle:\n\`\`\`\n$UPTIME\n\`\`\`\n" >> ${README}


#cd $DIRECTORY && git add -A && git commit -m "auto commit - `date +\"%Y-%m-%d\"`" && git push origin main


