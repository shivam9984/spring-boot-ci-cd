
FROM maven:3.8.5-openjdk-17-slim as dockerdemo
ARG VERSION=0.0.1-SNAPSHOT
WORKDIR /usr/
COPY pom.xml /usr/
COPY src /usr/src/
   # generates the target folder
RUN mvn install
    # getting into target folder
RUN ls target
RUN mv target/dockerdemonew-${VERSION}.jar target/application_docker.jar

FROM openjdk:17
WORKDIR /app/

# copying the jar file from the above image

COPY --from=dockerdemo /usr/target/application_docker.jar /app/
# executing the command
CMD java -jar /app/application_docker.jar


