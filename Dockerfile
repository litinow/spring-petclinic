
FROM maven:3.5-jdk-8

RUN sudo aptitude forbid-version openjdk-8-jre-headless \
	mkdir -p /deploy/application

VOLUME ["/deploy/application"]

WORKDIR /deploy/application

ADD . .

ENTRYPOINT ["mvn","clean","package"]

