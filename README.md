# STEPS

1. git clone repo

2. ./bring__up_vm.sh

3. cd into vm1 & vm2 and modify Vagrantfile:

4. config.vm.box = "hashicorp/bionic64" & config.vm.box_version = "1.0.282"

5. vagrant box add hashicorp/bionic64

6. cd into each vm folder and vagrant up

7. cd into the shared vagrant folder where install_docker.sh and docker-compose.yml are located

8. in each vm run ./install_docker.sh

9. sudo docker swarm init

10. sudo docker run -d --privileged --name worker-${i} --hostname=worker-${i} -p ${i}2375:2375 docker:1.12.1-dind

11. sudo docker --host=localhost:${i}2375 swarm join --token <secure_token> <your_IP_ADDR>:2377

12. sudo docker node ls

13. sudo docker stack deploy -c docker-compose.yml swarm_hello_world

14. sudo docker service ls

15. exit and vagrant destroy 
