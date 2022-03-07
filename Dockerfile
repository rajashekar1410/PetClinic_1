From openjdk:8-jdk-alpine
COPY /home/runner/work/PetClinic_1/PetClinic_1/target/petclinic.war app.war
# Port
EXPOSE 8080
# Dockerize
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
