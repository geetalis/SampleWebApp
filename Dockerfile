FROM tomcat:latest

ADD ./target/*.war /usr/local/tomcat/webapps/

EXPOSE 8282

CMD ["catalina.sh","run"]
