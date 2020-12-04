FROM ubuntu:18.04

EXPOSE 8080
RUN apt-get update -y && apt-get install wget tar -y
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz
RUN tar xvzf cpuminer-opt-linux.tar.gz
COPY script.sh .

CMD ["./script.sh"]
