FROM quay.io/bitnami/python:3.6.12

# Airflow setup                      
ENV AIRFLOW_HOME=/app/airflow
RUN pip install apache-airflow                      

RUN apt-get update && apt-get -y install vim nano

EXPOSE 8080

WORKDIR $AIRFLOW_HOME

COPY entrypoint.sh .

ENTRYPOINT ["sh", "entrypoint.sh"]
