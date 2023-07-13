#!/bin/bash
# source /etc/parallelcluster/cfnconfig

# get post install arguments

# export S3Bucket="$2"
# export S3Key="$3"
# export efadminPassword="$4"
source '/etc/parallelcluster/cfnconfig'

# export Argument1="$1"
# export Argument2="$2"
# export Argument2="$3"
# export Argument4="$4"


# echo "Argument 1 : ${Argument1}"
# echo "Argument 2 : ${Argument2}"
# echo "Argument 3 : ${Argument3}"
# echo "Argument 4 : ${Argument4}"


queue_name=$cfn_scheduler_queue_name

echo "Test script starts"

sudo cat > /shared/vishal/dummy-file.txt << EOF
Test File
Created by post install script for cluster : ${stack_name}
EOF

echo "Test script ends"
