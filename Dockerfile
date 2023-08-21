FROM ubuntu:latest
RUN apt-get update && apt-get upgrade
RUN apt install nodejs -y
RUN node -v
