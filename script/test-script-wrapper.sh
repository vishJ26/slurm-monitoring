#!/bin/bash

#Load AWS Parallelcluster environment variables
. /etc/parallelcluster/cfnconfig


test_script=https://raw.githubusercontent.com/vishJ26/slurm-monitoring/master/script/test-script.sh

cd /shared/vishal/scripts
curl -o test.sh $test_script

#Execute the monitoring installation script
# bash -x "${monitoring_home}/parallelcluster-setup/${setup_command}" >/tmp/monitoring-setup.log 2>&1
bash -x test.sh >/shared/vishal/test-script.log 2>&1
exit $?
