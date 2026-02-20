#!/bin/bash
set -e

cd /home/ubuntu/ae-manage || exit 1

echo "Stopping containers..."
sudo docker compose down --remove-orphans || true

echo "Removing stopped containers..."
sudo docker rm -f $(docker ps -aq) 2>/dev/null || true

cd /home/ubuntu
echo "Cleanup done."
