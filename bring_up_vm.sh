#!/bin/bash

mkdir vm1

mkdir vm2

cd vm1

vagrant init 

cd ..

cd vm2 

vagrant init

cd ..

cp docker-compos.yml ./vm1/ && cp docker-compos.yml ./vm2/

cp install_docker.sh ./vm1/ && cp install_docker.sh ./vm2/


