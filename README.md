# OpenJDK with Elastic APM java agent
Mr Jeff's OpenJDK docker image with Elastic APM java agent.

![docker pulls](https://img.shields.io/docker/pulls/mrjeffapp/openjdk-jre-apm.svg?style=plastic)
![docker stars](https://img.shields.io/docker/stars/mrjeffapp/openjdk-jre-apm.svg?style=flat)

[Docker Hub](https://hub.docker.com/r/mrjeffapp/openjdk-jre-apm)

[Elastic APM java agent reference](https://www.elastic.co/guide/en/apm/agent/java/current/index.html)

## How to use the docker image
Extend your image from our image. 
```Dockerfile
FROM mrjeffapp/openjdk-jre-apm:11-1.10.0

ENV JAVA_OPTS=""

CMD exec java -Djava.security.egd=file:/dev/./urandom -jar -javaagent:elastic-apm-agent.jar $JAVA_OPTS micro-service.jar
````

## How to build a new image

1. Change the gradle properties to set a new Java version or Elastic APM version.
```gradle
ext {
    apmVersion = "1.10.0"
}
```

2. Build and release the new image with your docker credentials.

```bash
./gradlew dockerRelease  -Pusername=user123 -Ppassword=userpass

```
