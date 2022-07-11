FROM openjdk:18-slim

WORKDIR /app
RUN apt update && apt install -y wget
RUN wget https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar

EXPOSE 19132/udp

ENV XMS=512M
ENV XMX=2048M

CMD [ "java", "-Xms${XMS}", "-Xmx${XMX}", "-jar", "Geyser.jar" ]
