#!/bin/bash
docker stack deploy --compose-file /vagrant/stacks/nginx_1.yml nginx_1
#docker stack deploy --compose-file /vagrant/stacks/nginx_2.yml nginx_2