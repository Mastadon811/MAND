#!/bin/bash

# Stop en verwijder bestaande container als hij al bestaat
docker stop demo-container 2>/dev/null
docker rm demo-container 2>/dev/null

# Build de Docker image
docker build -t demo-site .

# Start de container op poort 81
docker run -d --name demo-container -p 81:80 demo-site
