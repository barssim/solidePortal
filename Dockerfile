
# Use a base image with Java installed 
FROM openjdk:8-jdk-alpine

# Set environment variables 
ENV TOMCAT_VERSION 8.0.32 
ENV CATALINA_HOME /usr/local/tomcat 
# Download and install Tomcat 
RUN mkdir -p /usr/local/tomcat 
RUN wget -q https://archive.apache.org/dist/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz
RUN tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz --strip-components=1 -C ${CATALINA_HOME} 
RUN rm apache-tomcat-${TOMCAT_VERSION}.tar.gz 
 
COPY ./target/solidePortal*.war $CATALINA_HOME/webapps/solidePortal.war
COPY ./db_config/solideConfig.xml $CATALINA_HOME/conf/solideConfig.xml

# Expose the default Tomcat port 
EXPOSE 8080 
# Start Tomcat 
CMD ["sh", "-c", "$CATALINA_HOME/bin/catalina.sh run"]
