#!/bin/bash
source /etc/parallelcluster/cfnconfig

echo "Test script starts"

sudo cat > /shared/vishal/dummy-file.txt << EOF
Test File
Created by post install script for cluster : ${stack_name}
EOF

echo "Test script ends"
