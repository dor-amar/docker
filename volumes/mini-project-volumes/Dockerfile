FROM python:3.9-slim

WORKDIR /app

COPY app.py /app/app.py

RUN mkdir -p /data

VOLUME ["/data"]

CMD ["python", "app.py"]
