#!/bin/bash
# # #source the AWS ParallelCluster profile
. /etc/parallelcluster/cfnconfig

mkdir script-test-folder
cd script-test-folder

cat >> strings.text << EOF
text
more text
and another line
EOF
