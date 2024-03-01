FROM alpine:3.14
ADD ./target/java-for-devops.jar /usr/app/
WORKDIR /usr/app/
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "java-for-devops.jar"]
