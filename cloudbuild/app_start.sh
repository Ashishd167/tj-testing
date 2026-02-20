#!/bin/bash
set -e

cd /home/ubuntu/ae-manage || exit 1

echo "Downloading env file from GCS..."
gsutil cp gs://tj-testing-bucket/config.manage-ae.env config.env

echo "Starting application..."
docker compose up --build -d
