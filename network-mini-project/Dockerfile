FROM python:3.8-slim

WORKDIR /app

COPY app.py /app
COPY requirements.txt /app

RUN pip install flask

EXPOSE 8080

CMD ["python", "app.py"]
