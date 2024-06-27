FROM openjdk
COPY target/*.jar /
COPY --chown=node:node ./package*.json ./
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]
