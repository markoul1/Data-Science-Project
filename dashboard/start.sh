#!/bin/sh

# Start cron in the background
crond

#initial plot generation
python3 generatePlots.py

# Start Nginx in the foreground
nginx -g 'daemon off;'
