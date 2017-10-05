
# Rancher demo environment

This uses vagrant to bootstrap a local cluster of 3 ubuntu servers. This will then be used to create a lab to evaluate
the 2.0 release of Rancher

http://rancher.com/rancher2-0/

## Bootstrap cluster

    . bootstrap.sh

## Install Rancher agents

Rancher will start on the following URL

    http://$(docker-machine ip master):8080/

You will need to create an ssh session on each node and copy and paste an agent connection command


    for i in worker1 worker2 worker3
    do
      docker-machine ssh $i <copied from Rancher UI>
    done
