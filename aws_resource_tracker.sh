#!/bin/bash

##########
# Author: Prem Kumar S
# Date: 14-09-2024
# Version: V1
# This script is used to display AWS resources
##########

set -x # debug mode
echo "S3 buckets:"
aws s3 ls

echo "EC2 Instances:"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Lambda Functions:"
aws lambda list-functions

echo "IAM users:"
aws iam list-users


