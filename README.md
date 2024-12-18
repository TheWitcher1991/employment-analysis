# Analysis of unemployment and downtime data

## About

Get your monitoring stack up and running with one command using a Docker Compose stack featuring:

- **[Grafana](https://github.com/grafana/grafana)**: Dashboarding.
- **[Apache Superset](https://registry.hub.docker.com/r/apache/superset)**: Dashboarding.
- **[Pgadmin](https://registry.hub.docker.com/r/dpage/pgadmin4)**: UI for database.
- **[PostgreSQL](https://github.com/prometheus/prometheus)**: Database.
- **[Prometheus](https://github.com/prometheus/prometheus)**: Timeseries database for metrics.
- **[Node-Exporter](https://github.com/prometheus/node_exporter)**: Node metrics.
- **[Postgres-Exporter](https://registry.hub.docker.com/r/wrouesnel/postgres_exporter)**: Postgresql metrics.

```shell
sudo docker compose up --build
```

## Endpoints

The following endpoints are available:

| Container            | Internal Endpoint               | External Endpoint     |
|----------------------|---------------------------------|-----------------------|
| Grafana              | http://grafana:3000             | http://localhost:3000 |
| Apache Superset      | http://superset:8088            | http://localhost:8088 |
| Pgadmin              | http://pgadmin:8080             | http://localhost:8080 |
| Prometheus           | http://prometheus:9090          | http://localhost:9090 |
| Node-Exporter        | http://node-exporter:9100       | http://localhost:9100 |
| Postgres-Exporter    | http://postgres-exporter:9187   | http://localhost:9187 |
| PostgreSQL           | http://postgres:5432            | N/A                   |
