FROM selenium/standalone-chrome
RUN sudo apt update && \
    sudo apt install -y maven git && \
    sudo apt install -y default-jdk
