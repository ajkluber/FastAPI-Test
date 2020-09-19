FROM ubuntu:18.04
ADD requirements.txt .
ADD main.py .
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
RUN apt-get update && apt-get install -y python3.8 python3-pip && pip3 install -r requirements.txt
EXPOSE 8000
CMD uvicorn main:app --reload