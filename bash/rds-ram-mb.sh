#!/bin/bash

set -e

trap 'echo "Failed describing instance type $instance_type exit code $?"' ERR

eval "$(jq -r '@sh "INSTANCE_TYPE=\(.instance_type)"')"

MB=$(aws ec2 describe-instance-types --instance-type "$INSTANCE_TYPE" --query "InstanceTypes[0].MemoryInfo.SizeInMiB")

jq -n --arg mb "$MB" '{"MB":$mb}'