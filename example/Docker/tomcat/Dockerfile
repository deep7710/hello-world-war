FROM centos:7
RUN yum install wget vim bind-utils net-tools telnet -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum install java-1.8.0-openjdk.x86_64 -y
RUN groupadd tomcat
RUN mkdir /opt/tomcat
RUN useradd -s /bin/nologin -g tomcat -d /opt/tomcat tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz
RUN tar -zxvf apache-tomcat-8.5.57.tar.gz -C /opt/tomcat --strip-components=1
RUN cd /opt/tomcat &&\
    chgrp -R tomcat conf &&\
    chmod g+rwx conf &&\
    chmod g+r conf/* &&\
    chown -R tomcat logs/ temp/ webapps/ work/ &&\
    chgrp -R tomcat bin &&\
    chgrp -R tomcat lib &&\
    chmod g+rwx bin &&\
    chmod g+r bin/*
COPY tomcat.service /etc/systemd/system/tomcat.service
#RUN systemctl daemon-reload
RUN yum install haveged -y &&\
#    systemctl start haveged.service &&\
    systemctl enable haveged.service
#COPY start.sh /start.sh
#RUN  /bin/bash /start.sh
#ENTRYPOINT ["/start.sh"]
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
