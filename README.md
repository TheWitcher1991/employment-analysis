# Analysis of unemployment and downtime data

## About

Get your monitoring stack up and running with one command using a Docker Compose stack featuring:

- **[Grafana](https://github.com/grafana/grafana)**: Dashboarding.
- **[Apache Superset](https://registry.hub.docker.com/r/apache/superset)**: Dashboarding.
- **[Pgadmin](https://registry.hub.docker.com/r/dpage/pgadmin4)**: UI for database.
- **[Prometheus](https://github.com/prometheus/prometheus)**: Timeseries database for metrics.
- **[Node-Exporter](https://github.com/prometheus/node_exporter)**: Node metrics.
- **[Postgres-Exporter](https://registry.hub.docker.com/r/wrouesnel/postgres_exporter)**: Postgresql metrics.

```shell
sudo docker compose up --build
```

## Endpoints

The following endpoints are available:

| Container                    | Internal Endpoint                         | External Endpoint     |
| ---------------------------- | ----------------------------------------- |---------------------- |
| Grafana                      | http://grafana:3000                       | http://localhost:3000 |
| Prometheus                   | http://prometheus:9090                    | http://localhost:9090 |
| Node-Exporter                | http://node-exporter:9100                 | http://localhost:9100 |
| cAdvisor                     | http://cadvisor:8080                      | N/A                   |
| Alertmanager                 | http://alertmanager:9093                  | http://localhost:9093 |
| Uncomplicated Alert Receiver | http://uncomplicated-alert-receiver:9094  | http://localhost:9094 |
| Loki                         | http://loki:3100                          | http://localhost:3100 |
