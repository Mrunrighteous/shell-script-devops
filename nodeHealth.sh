#!/bin/bash

######################
# Author: Prem Kumar S
# Date: 20-08-2024

# This script outputs the node health

# Version: v1
#####################
set -x # debug mode
set -e # exits the code if there an error in script
set -o pipefail
echo "Disk Details"
df -h
echo "Memory Details"
free -g
echo "CPU Details"
nproc
ps -ef | grep amazon | awk -F" " '{print $2}'
