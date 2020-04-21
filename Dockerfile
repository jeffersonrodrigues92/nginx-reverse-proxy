FROM openjdk:8

ENV wordir=/opt/app/

WORKDIR ${wordir}

COPY /target/nginx-proxy-0.0.1-SNAPSHOT.jar ${wordir}nginx-server.jar

ENTRYPOINT ["java","-jar","nginx-server.jar"]