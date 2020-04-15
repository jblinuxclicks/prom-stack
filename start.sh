#!/bin/bash
podman-compose down 2> /dev/null

mkdir -p grafana/data grafana/logs grafana/datasources grafana/dashboards
mkdir -p prometheus/alerts prometheus/data

# workaround for development, for production create users prometheus/grafana
chmod -R 777 prometheus 2> /dev/null
chmod -R 777 grafana 2> /dev/null

docker-compose up -d

echo "Prometheus:   http://localhost:9090"
echo "Grafana:      http://localhost:3000"
echo "    user:     admin"
echo "    password: password"
echo
echo "Pushgateway:  http://localhost:9091"
echo "Alertmanager: http://localhost:9093"
