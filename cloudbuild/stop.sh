#!/bin/bash
set -e

if [ "$(docker ps -aq)" ]; then
  docker rm -f $(docker ps -aq)
fi

rm -rf /home/ubuntu/ae-manage || true
