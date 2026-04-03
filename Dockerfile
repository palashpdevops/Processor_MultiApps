FROM amazon-corretto:21

COPY processing-app/target/consumer-app-*.jar ./consumers-data-app.jar

RUN echo 'echo "JAVA_OPTIONS=${JAVA_OPTIONS}"; /usr/bin/java ${JAVA_OPTIONS} -jar consumers-data-app.jar' > entrypoint .sh
ENTRYPOINT ["sh", "entrypoint .sh"]

USER appuser
WORKDIR /www/home/appuser
