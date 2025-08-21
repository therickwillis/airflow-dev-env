# Airflow Dev Environment

This repository provides a set of bash scripts to manage your [Apache Airflow](https://airflow.apache.org/) development environment.

## Prerequisites

- [Docker](https://www.docker.com/) installed
- [Docker Compose](https://docs.docker.com/compose/) installed
- Bash shell (e.g., Git Bash, WSL, or similar on Windows)

## Usage

### Run the Init Script

Running the `init-env.sh` will:
- download the docker-compose.yaml file
- download the airflow cli
- build the default airflow.cfg
- initialize airflow
- execute the compose up script (can be changed to include flower)
  

All environment management is done via the `airflow.sh` script:

**See detailed instructions:**  [airflow cli usage guide](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html#running-the-cli-commands)

- **Access the Airflow web UI:**  
  Open [http://localhost:8080](http://localhost:8080) in your browser.

## Customization

- Place your DAG files in the `dags/` directory.
- Add custom plugins to the `plugins/` directory.

## License

This project is licensed under the MIT License.
