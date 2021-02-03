FROM whuera/ubuntu-springboot
VOLUME /tmp
ARG JAR_FILE=build/libs/service-product-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]