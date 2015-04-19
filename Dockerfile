FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y wget zip openjdk-7-jdk

#download
RUN wget -O /tmp/sonarqube-5.1.zip http://dist.sonar.codehaus.org/sonarqube-5.1.zip

#unzip
RUN unzip -o /tmp/sonarqube-5.1.zip -d /usr/local/

#copy properties
RUN cp /usr/local/sonarqube-5.1/conf/sonar.properties /usr/local/sonarqube-5.1/conf/sonar.properties.default
ADD ./sonar.properties /usr/local/sonarqube-5.1/conf/

#port
EXPOSE 9000

CMD ["/usr/local/sonarqube-5.1/bin/linux-x86-64/sonar.sh","console"]
