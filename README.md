
# Rancher demo environment

This uses vagrant to bootstrap a local cluster of 3 ubuntu servers. This will then be used to create a lab to evaluate
the 2.0 release of Rancher

http://rancher.com/rancher2-0/

## Bootstrap cluster

    vagrant up

## Install Rancher server

    vagrant ssh master -c "sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:preview"
 
## Install Rancher agents

Rancher will start on the following URL

- http://10.0.0.10:8080/

You will need to create an ssh session on each node and copy and paste an agent connection command
