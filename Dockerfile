FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./Hospital-Management-System/target/*.war /usr/local/tomcat/webapps/HospitalSystemV2-1.0-SNAPSHOT.war
EXPOSE 7373
CMD ["catalina.sh", "run"]
