#!/bin/bash
source '/etc/parallelcluster/cfnconfig'

# get post install arguments
# export S3Bucket="$2"
# export S3Key="$3"
# export efadminPassword="$4"



script_name=https://raw.githubusercontent.com/vishJ26/slurm-monitoring/master/script/computenode.sh

cd /shared
curl -o computenode.sh $script_name

#Execute the script
bash -x computenode.sh >>/shared/computenode-script.log 2>&1
exit $?
