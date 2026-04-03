FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y gcc libffi-dev libssl-dev python3-dev build-essential \
    && pip install --no-cache-dir -r requirements.txt \
    && apt-get remove -y gcc python3-dev build-essential \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY . /app

EXPOSE 80

ENTRYPOINT ["python", "phonebook-app.py"]
