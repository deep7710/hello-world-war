FROM jenkins/jenkins:2.235.3-lts-centos7
USER root
RUN yum update -y;yum install vim wget bind-utils net-tools telnet -y
RUN curl -fsSL https://get.docker.com/ | sh
RUN gpasswd -a jenkins docker
EXPOSE 8080
EXPOSE 50000
#CMD ["/usr/sbin/init"]
