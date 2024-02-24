#!/bin/bash
name=torch2.0-train
docker-compose -f $name/dockercompose.yml --project-directory $name up -d