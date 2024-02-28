FROM alpine:3.14
RUN  rm -rf /var/cache/apk/*
WORKDIR /usr/app/
COPY ./target/demo-0.0.1-SNAPSHOT.jar /usr/app/
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
