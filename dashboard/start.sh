#!/bin/sh

# Start cron in the background
crond

#initial plot generation
python3 /app/generatePlots.py >> /var/log/script.log 2>&1

# Start Nginx in the foreground
nginx -g 'daemon off;'
