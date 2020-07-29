FROM alpine:3.5
RUN apk add --update python3 python3-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY Project /src/Project
CMD python /src/main.py