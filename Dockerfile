FROM ubantu:20.04
RUN apt-get update && apt-get upgrade
ADD target/java-project-1.0-SNAPSHOT.jar java-project-1.0-SNAPSHOT.jar
ENTRYPOINT ["java-project-1.0-SNAPSHOT.jar"]
