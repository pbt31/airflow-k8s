#!/bin/bash
airflow initdb
airflow webserver -p 8080  &>/opt/airflow/server.log &
airflow scheduler  &>/opt/airflow/scheduler.log &
