#! /bin/bash

#demarrage du service cron
service cron start
status=$?
echo $status

if [ $status -ne 0 ]
then
        echo 'erreur du service cron'
        exit $status
fi 

while sleep 20; do
  PROCESS_1_STATUS=$?
  # If the greps above find anything, they exit with 0 status
  # If they are not both 0, then something is wrong
  if [ $PROCESS_1_STATUS -ne 0 -o ]; then
    echo "One of the processes has already exited."
    exit 1
  fi
done