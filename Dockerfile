FROM python:3.11-alpine  
# Используем стабильный существующий тег

WORKDIR /app

# Копируем только requirements.txt для оптимизации слоев
COPY requirements.txt .

# Устанавливаем реальные зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем основной код
COPY main.py .

EXPOSE 5000

CMD ["python", "main.py"]