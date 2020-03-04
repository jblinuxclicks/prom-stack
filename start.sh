#!/bin/bash
podman-compose down 2> /dev/null

mkdir -p prometheus/alerts
podman-compose up -d

echo "Prometheus:   http://localhost:9090"
echo "Grafana:      http://localhost:3000"
echo "    user:     admin"
echo "    password: password"
echo
echo "Pushgateway:  http://localhost:9091"
echo "Alertmanager: http://localhost:9093"
