FROM openjdk:11-jre-slim
WORKDIR /webapp
COPY /var/lib/jenkins/workspace/JavaQR_CI/target/ qrgenerator-0.0.1-SNAPSHOT.jar /webapp 
EXPOSE 8050
CMD [ "java", "-jar", "qrgenerator-0.0.1-SNAPSHOT.jar" ]