#!/usr/bin/env bash

set -e # Script fails if docker build fails (has edge cases)

# Write build script as you like

docker build -t {{ cookiecutter.service_name }} -f ../app/DockerfileProd ../app