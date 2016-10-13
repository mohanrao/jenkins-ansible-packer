FROM jenkins:latest
MAINTAINER mohana rao <email.to.mohanrao@gmail.com>
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible -y
RUN apt-get update -y
RUN apt-get install -y ansible
RUN cd /tmp
RUN wget https://releases.hashicorp.com/packer/0.10.2/packer_0.10.2_linux_amd64.zip
RUN unzip packer_0.10.2_linux_amd64.zip
RUN cp packer /usr/local/sbin