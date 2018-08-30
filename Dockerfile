FROM python:3.5
LABEL maintainer adavarski

RUN mkdir /app

COPY requirements.txt /app

ADD app /app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD python app.py
