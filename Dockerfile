FROM ubuntu:latest
COPY apache-tomcat-7.0.68.tar.gz /tmp/apache-tomcat-7.0.68.tar.gz
COPY jdk-7u79-linux-x64.tar.gz /tmp/jdk-7u79-linux-x64.tar.gz
#WORKDIR
RUN mkdir opt/jdk
RUN tar xvzf /tmp/apache-tomcat-7.0.68.tar.gz
RUN tar xvzf /tmp/jdk-7u79-linux-x64.tar.gz -C /opt/jdk
RUN update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_79/bin/java 100
RUN update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_79/bin/javac 100
RUN mv apache-tomcat-7.0.68 /var/lib/

COPY run.sh /tmp/run.sh
CMD bash -C '/tmp/run.sh';'/var/lib/apache-tomcat-7.0.68/bin/startup.sh';'bash'
