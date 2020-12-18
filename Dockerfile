FROM quay.io/bitnami/python:3.6.12

# Airflow setup                      
ENV AIRFLOW_HOME=/app/airflow
RUN pip install apache-airflow                      

RUN airflow initdb

EXPOSE 8080

WORKDIR AIRFLOW_HOME

COPY entrypoint.sh .

CMD ["entrypoint.sh"]
