FROM tomcat:8.0-alpine
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
ADD target/WebAppCal-1.3.5.war /usr/local/tomcat/webapps/
EXPOSE 9090
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
