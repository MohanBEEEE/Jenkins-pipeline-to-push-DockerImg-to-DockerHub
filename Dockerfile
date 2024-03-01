FROM alpine:3.14
RUN  apk update \
  && apk upgrade \
  && apk add --update openjdk11 tzdata curl unzip bash \
  && rm -rf /var/cache/apk/*
ADD ./target/java-for-devops.jar /usr/app/
WORKDIR /usr/app/
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "java-for-devops.jar"]
