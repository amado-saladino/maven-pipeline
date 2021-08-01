FROM selenium/standalone-chrome
USER 0
RUN sudo apt update && \
    sudo apt install -y maven && \
    sudo apt install -y default-jdk
WORKDIR /app
ENTRYPOINT ["sudo","mvn"]
CMD ["clean","test"]
