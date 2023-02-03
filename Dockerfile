FROM tomcat:latest

ADD ./target/*.war /usr/local/tomcat/webapps/

EXPOSE 8282

CMD ["sleep", "infinity"]

CMD ["catalina.sh","run"]
