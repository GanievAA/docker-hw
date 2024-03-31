FROM python:3.8

ENV SERVER_APP=server
LABEL version="0.0.1" author="user@name.com"

WORKDIR server
COPY . /server
RUN pip install -r requirements.txt

EXPOSE 8080

CMD python server.py run -h 0.0.0.0 -p 8080
