FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/*.war HospitalSystemV2-1.0-SNAPSHOT.war
COPY ./Hospital-Management-System/target/*.war /usr/local/tomcat/webapps/HospitalSystemV2-1.0-SNAPSHOT.war
EXPOSE 7373
CMD ["catalina.sh", "run"]
