# STEPS

l. git clone repo

l. ./bring__up_vm.sh

l. cd into vm1 & vm2 and modify Vagrantfile:

l. config.vm.box = "hashicorp/bionic64" & config.vm.box_version = "1.0.282"

l. vagrant box add hashicorp/bionic64

l. cd into each vm folder and vagrant up

l. cd into the shared vagrant folder where install_docker.sh and docker-compose.yml are located

l. in each vm run ./install_docker.sh

l. sudo docker swarm init

l. sudo docker run -d --privileged --name worker-${i} --hostname=worker-${i} -p ${i}2375:2375 docker:1.12.1-dind

l. sudo docker --host=localhost:${i}2375 swarm join --token <secure_token> <your_IP_ADDR>:2377

l. sudo docker node ls

l. sudo docker stack deploy -c docker-compose.yml swarm_hello_world

l. sudo docker service ls

l. exit and vagrant destroy 
