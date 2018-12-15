FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /foundation
WORKDIR /foundation
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["/foundation/app/hello.py"]