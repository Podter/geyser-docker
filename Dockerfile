FROM eclipse-temurin:16.0.2_7-jdk-alpine

WORKDIR /data

RUN wget https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar

EXPOSE 19132

CMD [ "java", "-Xms512M", "-Xmx2G", "-jar", "Geyser.jar" ]
