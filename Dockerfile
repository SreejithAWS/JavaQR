FROM openjdk:11-jre-slim
WORKDIR /webapp
COPY /var/lib/jenkins/workspace/javaqrci/target /webapp 
EXPOSE 8050
CMD [ "java", "-jar", "qrgenerator-0.0.1-SNAPSHOT.jar" ]