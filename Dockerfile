FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt /app/requirements.txt
COPY config.example.ini /app/config/config.example.ini
COPY handlers /app/handlers
RUN pip install -r /app/requirements.txt
COPY *.py /app/
CMD ["python", "bot.py"]
