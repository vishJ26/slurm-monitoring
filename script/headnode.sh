# #!/bin/bash
./etc/parallelcluster/cfnconfig

# s3_bucket_name=vishal-application
# region=us-east-1
# S3FileName=pcluster/cw-headnode.json
# dir=cw-configs

# # make dir for job logs
# mkdir /shared/logs/${stack_name}

# # dir for cloudwatch configs
# mkdir /shared/$dir
# cd /shared/$dir

# aws s3api get-object --bucket $s3_bucket_name --region $region --key $S3FileName  cw-headnode.json
# # replace queue name in file
# # log_group_names="\/aws\/parallelcluster\/$(echo ${stack_name} | cut -d "-" -f2-)"
# log_group_name="invisibl/${stack_name}"
# echo $log_group_name
# sed -i "s/__LOG_GROUP_NAME__/${log_group_names}/g" 	cw-headnode.json

# sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a append-config -m ec2 -s -c file:cw-headnode.json
