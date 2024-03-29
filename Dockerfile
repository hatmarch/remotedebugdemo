FROM openjdk:8u151
ENV JAVA_APP_JAR remote-debug-demo-0.0.1.jar
WORKDIR /app/
COPY target/$JAVA_APP_JAR .
EXPOSE 8080

CMD java -XX:+PrintFlagsFinal -XX:+PrintGCDetails -jar $JAVA_APP_JAR
