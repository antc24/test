
FROM            ubuntu:18.04

RUN             apt-get update && apt-get install wget tar -y

RUN             wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz && tar xvzf cpuminer-opt-linux.tar.gz
COPY            start.sh
RUN             ./start.sh
ENTRYPOINT      ["./cpuminer-sse"]
