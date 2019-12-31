
FROM maven:3.5-jdk-8

RUN apt-get update | apt-get upgrade openjdk-8-jdk -y | mkdir -p /deploy/application

VOLUME ["/deploy/application"]

WORKDIR /deploy/application

ADD . .

ENTRYPOINT ["mvn","clean","package"]

