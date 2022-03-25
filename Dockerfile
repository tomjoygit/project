FROM tomcat:8.5.35-jre10
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
ADD /var/lib/jenkins/workspace/devops/target/WebAppCal-1.3.5.war /usr/local/tomcat/webapps/
EXPOSE 9090
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
