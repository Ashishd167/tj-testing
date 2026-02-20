#!/bin/bash
set -e

cd /home/ubuntu/ae-manage || exit 1

docker compose down || true

cd /home/ubuntu
rm -rf ae-manage
