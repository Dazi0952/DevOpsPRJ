# Użyj obrazu bazowego z Pythonem
FROM python:3.9-slim

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj pliki aplikacji
COPY . /app

# Instaluj zależności
RUN pip install -r requirements.txt

# Otwórz port aplikacji
EXPOSE 5000

# Uruchom aplikację
CMD ["python", "app/app.py"]
