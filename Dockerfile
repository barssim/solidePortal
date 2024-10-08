FROM tomcat:8.0
	
ENV APP_DATA_FOLDER=/var/lib/solidePortal
ENV SOLIDEPORTAL_CONFIG=${APP_DATA_FOLDER}/config/
	
#Move over the War file from previous build step
WORKDIR $APP_DATA_FOLDER
WORKDIR /usr/local/tomcat/webapps/
COPY ./libs WORKDIR
COPY ./target/solidePortal*.war /usr/local/tomcat/webapps/solidePortal.war


EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]