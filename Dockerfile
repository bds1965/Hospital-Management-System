FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./Hospital-Management-Systemtarget/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 7373
CMD ["catalina.sh", "run"]
