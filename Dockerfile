# Use official Tomcat base image
FROM tomcat:9.0

# Maintainer info
LABEL maintainer="suryaakshaya1319@gmail.com"

# Remove default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps directory
COPY target/SAH.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
