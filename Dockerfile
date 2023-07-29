FROM maven:3.5-jdk-8 AS build  
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package

FROM gcr.io/distroless/java  
COPY --from=build /usr/src/app/ /usr/app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/app/target/dependency/webapp-runner.jar", "--port", "8080", "/usr/app/target/HessianTestServer-1.0.war"]