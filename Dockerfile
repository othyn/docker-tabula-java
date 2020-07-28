FROM java:8-jre-alpine

ENV TABULA_RELEASE=1.0.3
RUN apk add --no-cache curl && \
    curl -Lo tabula.jar https://github.com/tabulapdf/tabula-java/releases/download/v${TABULA_RELEASE}/tabula-${TABULA_RELEASE}-jar-with-dependencies.jar
ENTRYPOINT ["java", "-jar", "./tabula.jar"]
