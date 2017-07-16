FROM frolvlad/alpine-oraclejdk8

## Install Maven
RUN apk add maven --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/community/ --allow-untrusted \
	&& rm -rf /var/cache/apk/*

ENV MAVEN_HOME /usr/share/java/maven-3
ENV PATH $PATH:$MAVEN_HOME/bin

## Add our code
ADD ./app /app

## Set user permissions
RUN adduser -D myuser
RUN chown -R myuser:myuser /app
USER myuser

## Set the workdir
WORKDIR /app

## Compile app
RUN mvn package

ENV PORT=8080

CMD ["sh", "target/bin/webapp"]