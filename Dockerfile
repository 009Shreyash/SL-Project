FROM nginx
EXPOSE 8080
ADD target/java-project-1.0-SNAPSHOT.jar java-project-1.0-SNAPSHOT.jar
ENTRYPOINT ["java-project-1.0-SNAPSHOT.jar"]
