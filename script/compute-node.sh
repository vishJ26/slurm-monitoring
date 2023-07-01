#!/bin/bash
# # #source the AWS ParallelCluster profile
. /etc/parallelcluster/cfnconfig

# mkdir /shared/vishal/script-test-folder
cd /shared/vishal/

cat >> strings.text << EOF
text
more text
and another line
EOF
