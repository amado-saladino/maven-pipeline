FROM selenium/standalone-chrome
WORKDIR /app
RUN sudo apt update
RUN sudo apt install -y openjdk-8-jdk maven
COPY . .
CMD ["sudo", "mvn", "test"]