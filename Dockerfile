From ubuntu
RUN apt update -y && apt install git -y && apt install openjdk-11-jdk -y && apt install maven -y
WORKDIR /app
RUN git 
WORKDIR /app/docker-tomcat-satylearning
RUN mvn clean install

COPY ./webapp.war /usr/local/tomcat/webapps

