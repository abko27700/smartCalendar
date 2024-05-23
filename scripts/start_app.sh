#!/bin/bash

cd /home/ec2-user/projectDaria/smartCalendar

sh /home/ec2-user/smartCalendarCommands.sh

# Install dependencies using pip
pip install flask google-auth google-auth-oauthlib google-api-python-client gunicorn


# Start the application (assuming app.py with app function)
nohup gunicorn -w 2 -b 0.0.0.0:5000 app:app >> /home/ec2-user/logs/smartCalendar.log 2>&1 &
