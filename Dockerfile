FROM python:3.11-alpine

WORKDIR /app

# Скопируем только основной код
COPY main.py .

EXPOSE 5000

CMD ["python", "main.py"]
