#!/bin/bash

pid=`ps -ef | grep 'runserver' | awk '{print $2" "$3}'`
kill -9`echo ${pid}`
nohup python manage.py runserver 0.0.0.0:8000 &


