FROM maven:3.8.5-openjdk-18 as stage
WORKDIR /app
COPY . .
RUN mvn package 

FROM openjdk:18-jdk-slim
WORKDIR /app
COPY --from=stage /app/target/java-maven-app*.jar ./
CMD java -jar java-maven-app*.jar

