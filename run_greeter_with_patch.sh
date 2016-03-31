#!/usr/bin/env bash

docker build -t greeter .
docker run -t --rm --name greeter_with_patch greeter python ./greeter_client_with_patch.py

