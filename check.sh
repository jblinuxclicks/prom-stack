#!/bin/bash
curl -X GET http://localhost:9090/-/healthy
curl -X GET http://localhost:9090/-/ready

echo "Listening ports:"
netstat -lt | grep -E "9090|9091|9093|3000"
