#!/bin/bash

# Download the latest Airflow Docker Compose file and script
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/3.0.4/docker-compose.yaml'
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/3.0.4/airflow.sh'
chmod +x airflow.sh

# Create necessary directories for Airflow
mkdir -p ./dags ./logs ./plugins ./config
# Create a .env file with the current user ID
echo -e "AIRFLOW_UID=$(id -u)" > .env

# Start Airflow services using Docker Compose
docker compose run airflow-cli airflow config list
docker compose up airflow-init
docker compose up -d
# docker compose up flower -d
