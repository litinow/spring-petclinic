
FROM maven:latest

RUN mkdir -p /deploy/application

VOLUME ["/deploy/application"]

WORKDIR /deploy/application

ADD . .

ENTRYPOINT ["mvn","clean","package"]

