FROM alpine:3.14
RUN  apk update \
  && apk upgrade \
  && apk add --update openjdk11 tzdata curl unzip bash \
  && rm -rf /var/cache/apk/*
WORKDIR /usr/app/
COPY ./target/demo-0.0.1-SNAPSHOT.jar /usr/app/
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
