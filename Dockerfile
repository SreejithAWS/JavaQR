FROM openjdk:17.0.2
WORKDIR /webapp
COPY ./target /webapp 
EXPOSE 8050
CMD [ "java", "-jar", "qrgenerator-0.0.1-SNAPSHOT.jar" ]