## need alternative for openjdk, thinking: https://hub.docker.com/_/eclipse-temurin/
FROM openjdk:11

RUN apt update && apt install -y jq

RUN mkdir -p /docker/brc
WORKDIR /docker/brc

## replaced url with latest release, not specific version
ADD https://github.com/Pugmatt/BedrockConnect/releases/latest/download/BedrockConnect-1.0-SNAPSHOT.jar .

COPY start.sh ./start.sh
RUN chmod +x ./start.sh

EXPOSE 19132/udp

CMD ["./start.sh"]
