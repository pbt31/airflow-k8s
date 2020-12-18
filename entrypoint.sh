#!/bin/bash
airflow scheduler  &>/opt/airflow/scheduler.log &
airflow webserver -p 8080
