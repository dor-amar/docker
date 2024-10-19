#!/bin/sh
# Use the service name "flask-app" since both containers are in the same network
URL="http://flask-app:8080/ready"

# Log file path
LOGFILE="/var/log/availability.log"

# Check the HTTP status code of the app
STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

# Log the status of the Flask app
if [ $STATUS -eq 200 ]; then
    echo "$(date): Flask app is up (status code: $STATUS)" >> $LOGFILE
else
    echo "$(date): Flask app is down (status code: $STATUS)" >> $LOGFILE
fi

