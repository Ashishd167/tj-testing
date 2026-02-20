#!/bin/bash
set -e

cd /home/ubuntu/ae-manage || exit 1

echo "Downloading env file from GCS..."
gsutil cp gs://tj-testing-bucket/config.manage-ae.env.txt config.env

echo "Starting application..."
sudo chmod 777 /var/run/docker.sock
sudo docker compose up --build -d
