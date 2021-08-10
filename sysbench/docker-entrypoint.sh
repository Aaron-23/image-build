#!/bin/bash 
set -e

echo 'alias ll="ls -l"' >> ~/.bashrc

sleep ${SLEEP:-0}

exec "$@"
