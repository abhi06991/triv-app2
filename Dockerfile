FROM eclipse-temurin:22.0.2_9-jdk-ubi9-minimal

COPY AppTwo.java /usr/src/triv-app2/

WORKDIR /usr/src/triv-app2

RUN javac AppTwo.java

EXPOSE 8080

CMD ["sh", "-c", "java AppTwo && tail -f /dev/null"]
