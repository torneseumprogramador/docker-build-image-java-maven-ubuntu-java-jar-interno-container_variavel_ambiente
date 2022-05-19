FROM didox/ubuntu-java-maven
RUN mkdir java-ilab-simples
COPY . java-ilab-simples/
RUN cd java-ilab-simples/ && mvn package
RUN cp java-ilab-simples/target/*.jar /app.jar
RUN rm -rf java-ilab-simples/
ENTRYPOINT ["java","-jar","/app.jar"]
