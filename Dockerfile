From openjdk:11-jdk-slim
COPY --from=build targettt/petclinic.war app.war
# Port
EXPOSE 8080
# Dockerize
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
