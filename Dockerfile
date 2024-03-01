FROM alpine:3.14
WORKDIR /usr/app/
ADD ./target/java-for-devops.jar /usr/app/
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "java-for-devops.jar"]
