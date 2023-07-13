#!/bin/bash

source '/etc/parallelcluster/cfnconfig'

export Argument1="$1"
export Argument2="$2"
export Argument2="$3"
export Argument4="$4"


echo "Argument 1 : ${Argument1}" >>/shared/vishal/test-script-1.log 2>&1
echo "Argument 2 : ${Argument2}" >>/shared/vishal/test-script-1.log 2>&1
echo "Argument 3 : ${Argument3}" >>/shared/vishal/test-script-1.log 2>&1
echo "Argument 4 : ${Argument4}" >>/shared/vishal/test-script-1.log 2>&1


test_script=https://raw.githubusercontent.com/vishJ26/slurm-monitoring/master/script/test-script.sh

cd /shared/vishal/scripts
curl -o test.sh $test_script

#Execute the monitoring installation script
# bash -x "${monitoring_home}/parallelcluster-setup/${setup_command}" >/tmp/monitoring-setup.log 2>&1
bash -x test.sh >/shared/vishal/test-script.log 2>&1
exit $?
