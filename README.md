# tomcat
Docker image for installing apache tomcat

Creates a Docker image of tomcat
Works with default-jdk only.
Requires apache-tomcat-7.0.68.tar.gz file. Modify docker file according to the tomcat file
Requires jdk-7u79-linux-x64.tar.gz file. Modify docker file according to jdk.
Starts tomcat upon running container.

Creates manager-gui account if username and password are given as environment variables
