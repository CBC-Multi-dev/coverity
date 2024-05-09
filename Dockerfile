FROM openjdk:8

RUN apt-get update && \
    apt-get install build-essential maven default-jdk cowsay netcat -y && \
    update-alternatives --config javac
COPY . .

CMD ["mvn", "spring-boot:run"]
  app.secret=edf10572-880c-4dd9-aaf0-6ec402f678db
