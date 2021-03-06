FROM openjdk:8
WORKDIR /app/eureka-server/
ADD target/eureka-server.jar ./
ENV EUREKA_SERVER_PORT=8761
EXPOSE ${EUREKA_SERVER_PORT}
ENTRYPOINT ["java","-jar","eureka-server.jar"]
