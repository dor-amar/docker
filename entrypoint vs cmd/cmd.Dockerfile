FROM python:3.8-slim

WORKDIR /app

COPY app.py /app
COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]

