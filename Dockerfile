FROM openjdk:8-jre-alpine

EXPOSE 9090
#123
COPY ./target/java-maven-app-*.jar /usr/app/
WORKDIR /usr/app

CMD java -jar java-maven-app-*.jar
#606