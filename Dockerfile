FROM tomcat:8.0-alpine

LABEL maintainer=”tomjoy.pala@gmail.com”

ADD /var/lib/jenkins/workspace/devops/target/WebAppCal-1.3.5.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
