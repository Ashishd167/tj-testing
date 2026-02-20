#!/bin/bash
set -e

echo "Checking for any running Docker containers..."
containers=$(docker ps -aq)

if [ -n "$containers" ]; then
  echo "Stopping and removing Docker containers..."
  docker stop $containers || true
  docker rm $containers || true
else
  echo "No Docker containers found."
fi

echo "Cleaning up application directory..."
cd /home/ubuntu || true
rm -rf ae-manage || true

echo "Stop and cleanup completed."
