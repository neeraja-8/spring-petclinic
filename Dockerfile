FROM ubuntu

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk maven

WORKDIR /app

COPY . .

RUN mvn clean package

CMD ["java", "-jar", "target/spring-petclinic-4.0.0-SNAPSHOT.jar"]

