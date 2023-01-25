FROM tomcat:latest

ADD /target/*.war /usr/local/webapps/

EXPOSE 8080

CMD["catalina.sh","run"]
