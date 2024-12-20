#
# ---------------------------------------------------------
#
FROM python:3.12-slim AS base

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_DIR=/opt/poetry \
    DIR=${WORKDIR}

#
# ---------------------------------------------------------
#
FROM base AS poetry

WORKDIR $POETRY_DIR

COPY ./poetry.lock ./pyproject.toml $POETRY_DIR/

RUN pip install poetry -U \
    && poetry export --without-hashes --without dev -f requirements.txt -o requirements.txt

#
# ---------------------------------------------------------
#
FROM base AS runner

WORKDIR $DIR

COPY --from=poetry $POETRY_DIR/requirements.txt $DIR/

RUN pip install --no-cache-dir -r requirements.txt

COPY ./scripts/etl.py $DIR/

COPY ./data $DIR/

CMD ["python", "etl.py"]



