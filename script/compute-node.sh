# # #source the AWS ParallelCluster profile
# # . /etc/parallelcluster/cfnconfig

# # yum -y install docker
# # service docker start
# # chkconfig docker on
# # usermod -a -G docker $cfn_cluster_user

# # curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# # chmod +x /usr/local/bin/docker-compose

# # monitoring_dir_name=aws-parallelcluster-monitoring
# # monitoring_home="/home/${cfn_cluster_user}/${monitoring_dir_name}"

# # echo "$> variable monitoring_dir_name -> ${monitoring_dir_name}"
# # echo "$> variable monitoring_home -> ${monitoring_home}"

# # /usr/local/bin/docker-compose -f /home/${cfn_cluster_user}/${monitoring_dir_name}/docker-compose/docker-compose.compute.yml -p monitoring-compute up -d

# mkdir cw-configs
# cd cw-configs

# cat >> strings.text << EOF
# text
# more text
# and another line
# EOF
