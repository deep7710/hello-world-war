#FROM test-docker-repo.example.com:5000/tomcat-v8.57:v1
FROM 424503791295.dkr.ecr.ap-south-1.amazonaws.com/wallet-qa-ecr:tomcat-v8.5.60_1
#COPY start.sh /start.sh
COPY hello-world-war-1.0.0.war /opt/tomcat/webapps/
#RUN systemctl enable tomcat.service
EXPOSE 8080
#VOLUME [ "/sys/fs/cgroup" ]
#CMD ["/usr/sbin/init"]
CMD ["/opt/tomcat/bin/catalina.sh","run"]
