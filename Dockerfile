FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python python-pip wget
RUN pip install Flash
RUN apt-get update

ADD hello.py /home/hello.py

WORKDIR /home

ENTRYPOINT ["python"]
CMD ["hello.py"]
