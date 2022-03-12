FROM selenium/standalone-chrome
WORKDIR /app
USER 0
RUN apt update && \
    apt install -y maven default-jdk git
ENTRYPOINT ["mvn"]
CMD ["clean","test"]
