#docker build -t dashboard .
#docker run -d --rm --name dashboard -p 8082:80 dashboard
#The complexity of this dockerfile is due to the very low power of the system it will be build on
#the installation of precompiled modules helps with building times

# Use Python base image
FROM python:3.10-alpine

# Install Nginx
RUN apk add --no-cache nginx

# Install CMake, ninja, and other build dependencies
RUN apk add --no-cache cmake make gcc g++ libffi-dev ninja

# Install base dependencies for pandas, numpy, seaborn, matplotlib
RUN apk add --no-cache libpng-dev freetype-dev openblas-dev

# Install necessary Python packages
RUN pip install --no-cache-dir requests

# Create a directory for Nginx HTML files
RUN mkdir -p /usr/share/nginx/html

# Copy files to the appropriate locations
COPY . /usr/share/nginx/html/
COPY generatePlots.py /app/generatePlots.py
COPY plotGenerators/. /app/plotGenerators
COPY consolidationScripts/. /app/consolidationScripts
COPY cronjob /etc/cron.d/cronjob
COPY start.sh /usr/local/bin/start.sh
COPY nginx.conf /etc/nginx/nginx.conf
COPY requirements.txt .

RUN pip install --upgrade pip setuptools wheel

# Install other necessary Python packages
RUN pip install --prefer-binary -r requirements.txt

# Set permissions for the cron job and start script
RUN chmod 0644 /etc/cron.d/cronjob
RUN chmod +x /usr/local/bin/start.sh

# Apply the cron job
RUN crontab /etc/cron.d/cronjob

# Create a log file for cron
RUN touch /var/log/script.log

# Expose port 80 to allow traffic to the Nginx server
EXPOSE 80

# Start the script
CMD ["/usr/local/bin/start.sh"]
