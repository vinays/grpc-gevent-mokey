FROM python:2.7

RUN pip install gevent grpcio

ADD . /app
WORKDIR /app
CMD ["python", "/app/greeter_client.py"]

