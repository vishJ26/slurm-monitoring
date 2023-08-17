#!/bin/bash
sudo su
cd home/ec2-user/vishal/slurm-monitoring/docker
sudo ./make-queue-dashboards >> cft-script-logs.txt 2>>cft-script-error.log
