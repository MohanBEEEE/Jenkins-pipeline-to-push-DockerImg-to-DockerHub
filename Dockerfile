FROM alpine:3.14
RUN  rm -rf /var/cache/apk/*
WORKDIR /usr/app/
COPY ./target/java-for-devops.jar /usr/app/
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "java-for-devops.jar"]
