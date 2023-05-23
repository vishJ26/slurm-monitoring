#!/bin/bash
#
#
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0
#
# Usage: ./post-install [version]

#Load AWS Parallelcluster environment variables
. /etc/parallelcluster/cfnconfig
monitoring_dir_name=aws-parallelcluster-monitoring
install_monitoring_script=https://raw.githubusercontent.com/vishJ26/slurm-monitoring/master/script/compute-node.sh

# #get GitHub repo to clone and the installation script
# setup_command=install-monitoring.sh
# monitoring_home="/home/${cfn_cluster_user}/${monitoring_dir_name}"

#Execute the monitoring installation script
# bash -x "${monitoring_home}/parallelcluster-setup/${setup_command}" >/tmp/monitoring-setup.log 2>&1
bash -x "${install_monitoring_script}" >/tmp/monitoring-setup.log 2>&1
exit $?
