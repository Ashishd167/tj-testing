#!/bin/bash
set -e

if [ -d /home/ubuntu/ae-manage ]; then
    rm -rf /home/ubuntu/ae-manage
fi

mkdir -p /home/ubuntu/ae-manage
