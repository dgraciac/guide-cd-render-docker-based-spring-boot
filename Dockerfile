FROM eclipse-temurin:17.0.6_10-jre-jammy

VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} spring-boot.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /spring-boot.jar ${0} ${@}"]
EXPOSE 8080
