FROM ubuntu:latest
LABEL authors="Best By"

ENTRYPOINT ["top", "-b"]
FROM openjdk:17
COPY Main.java /app/Main.java
WORKDIR /app
RUN javac Main.java
CMD ["java", "Main"]