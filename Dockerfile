FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/*.war HospitalSystemV2-1.0-SNAPSHOT.war
COPY Hospital-Management-System/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
