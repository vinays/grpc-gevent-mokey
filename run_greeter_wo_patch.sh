#!/usr/bin/env bash

docker build -t greeter .
docker run -t --rm --name greeter_wo_patch greeter python ./greeter_client_wo_patch.py

