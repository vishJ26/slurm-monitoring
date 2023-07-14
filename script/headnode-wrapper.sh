#!/bin/bash
source '/etc/parallelcluster/cfnconfig'

# get post install arguments
# export S3Bucket="$2"
# export S3Key="$3"
# export efadminPassword="$4"

# mkdir /shared/logs

sudo mkdir /shared/logs
sudo mkdir /shared/logs/slurm

# mkdir /shared/observability
# mkdir /shared/observability/scripts
# mkdir /shared/observability/configs
# mkdir /shared/observability/logs


script_name=https://raw.githubusercontent.com/vishJ26/slurm-monitoring/master/script/headnode.sh

cd /shared
curl -o headnode.sh $script_name

#Execute the script
bash -x headnode.sh >>/shared/headnode-script.log 2>&1
exit $?
