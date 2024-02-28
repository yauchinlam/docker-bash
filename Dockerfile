FROM ubuntu:22.04

EXPOSE 3000

RUN apt-get update && apt-get install -y

RUN apt install jq -y python3-pip -y python3 -y

RUN pip install debugpy

ADD test /

ADD . /
 
CMD ["/app/test"]