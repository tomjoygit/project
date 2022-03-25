FROM tomcat:9.0.8-jre8-alpine
#RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
COPY ./target/WebAppCal-1.3.5.war /usr/local/tomcat/webapps/
EXPOSE 8080
#CMD chmod +x /usr/local/tomcat/bin/catalina.sh
#CMD ["catalina.sh", "run"]
