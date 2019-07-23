#!/bin/bash

# get parameter as json and parse it inline with python
aws ssm get-parameters --names dev_domain --region us-east-1 --output json | python3 -c 'import json, sys; print(json.load(sys.stdin)["Parameters"][0]["Value"])'

