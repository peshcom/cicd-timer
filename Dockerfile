FROM alpine:3.5
RUN apk add --update python3 py3-pip
COPY requirements.txt /src/requirements.txt
RUN pip3 install -r /src/requirements.txt
COPY Project /src/Project
CMD python /src/Project/main.py