#!/bin/bash
#
echo $DOCKER_INFLUXDB_INIT_MODE
# Conducts initial InfluxDB using the CLI
influx setup --skip-verify --bucket ${DOCKER_INFLUXDB_INIT_BUCKET} -t ${DOCKER_INFLUXDB_INIT_ADMIN_TOKEN} -o ${DOCKER_INFLUXDB_INIT_ORG} --username="${DOCKER_INFLUXDB_INIT_USERNAME}" --password="${DOCKER_INFLUXDB_INIT_PASSWORD}" --host=http://influxdb:8086 -f
