FROM selenium/standalone-chrome
USER 0
RUN apt update && \
    apt install -y maven git default-jdk
