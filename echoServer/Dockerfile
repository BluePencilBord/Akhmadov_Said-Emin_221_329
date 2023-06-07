FROM ubuntu:18.04

LABEL author="Said-Emin Akhmadov"

ENV TZ=Europe/Moscow
    
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install qt5-default qtbase5-dev qt5-qmake -y
RUN apt-get install build-essential -y

WORKDIR /221_329_Akhmadov

COPY *.cpp /221_329_Akhmadov
COPY *.h /221_329_Akhmadov
COPY *.pro /221_329_Akhmadov

RUN qmake echoServer.pro
RUN make hallServer

ENTRYPOINT ["./hallServer"]