#!/bin/bash
airflow initdb
airflow scheduler  &>/opt/airflow/scheduler.log &
airflow webserver -p 8080
