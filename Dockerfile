FROM openjdk:22-ea-18-oraclelinux7
WORKDIR /webapp
COPY ./target /webapp 
EXPOSE 8050
CMD [ "java", "-jar", "qrgenerator-0.0.1-SNAPSHOT.jar" ]