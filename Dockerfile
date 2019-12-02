FROM ubuntu:18.04

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& apt-get update \
&& apt-get install g++ -y
COPY ./ ./FC
WORKDIR /FC
RUN gcc -g helloworld.c  -o helloworld.o -Wall 
ENV PATH=/FC:$PATH
ENTRYPOINT /FC/helloworld.o
EXPOSE 5000
