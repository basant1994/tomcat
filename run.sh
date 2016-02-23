#!/bin/sh
set -e
export JAVA_HOME="/usr/lib/jvm/jdk1.7.0_79"  >> ~/.bashrc
export CATALINA_HOME="/var/lib/apache-tomcat-7.0.68"  >> ~/.bashrc
sed -i '$ d' /var/lib/apache-tomcat-7.0.68/conf/tomcat-users.xml
echo "<role rolename=\"manager-gui\"/> <user username=\"$username\" password=\"$password\" roles=\"manager-gui\"/> </tomcat-users>" >> /var/lib/apache-tomcat-7.0.68/conf/tomcat-users.xml
