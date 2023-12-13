FROM ubuntu:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip -y
WORKDIR /kaal/
COPY . /kaal/
RUN pip3 install -r Installer
CMD python3 Kaal.py