#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Запуск шедулера и вебсервера
airflow create_user -r Admin -u admin -e admin@acme.com -f admin -l user -p admin
airflow scheduler & airflow webserver
