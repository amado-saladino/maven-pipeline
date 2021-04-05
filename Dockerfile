FROM selenium/standalone-chrome
RUN sudo apt update
RUN sudo apt install -y openjdk-8-jdk maven