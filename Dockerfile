# Use the official Tomcat 9 image
FROM tomcat:9.0

# Remove default web apps in Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your compiled web application into Tomcat's webapps/ROOT
COPY build/web/ /usr/local/tomcat/webapps/ROOT/

# Expose port 8080
EXPOSE 8080
