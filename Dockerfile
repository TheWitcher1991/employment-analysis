FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \

WORKDIR /app

RUN poetry export --without-hashes --without dev -f requirements.txt -o requirements.txt

RUN pip install --no-cache-dir --timeout=100 -r requirements.txt

COPY . .

CMD ["python", "scripts/etl.py"]
