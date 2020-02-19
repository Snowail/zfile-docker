FROM mbdiallo/jdk-alpine
USER root
ENV VERSION 1.7

RUN wget -O zfile.jar https://github.com/zhaojun1998/zfile/releases/download/${VERSION}/zfile-${VERSION}.jar

VOLUME ["/zfile", "/root/.zfile"]
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","./zfile.jar"]
