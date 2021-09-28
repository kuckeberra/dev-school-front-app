FROM azul/zulu-openjdk-alpine:8
ARG APP_VERSION
WORKDIR /app/
COPY devschool-front-app-server/build/libs/devschool-front-app-server-${APP_VERSION}.jar devschool-front-app-server.jar
EXPOSE 8080
CMD ["java","-jar","devschool-front-app-server.jar"]
