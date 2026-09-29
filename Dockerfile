FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    TZ=Asia/Tehran

RUN apt-get update \
    && apt-get install -y --no-install-recommends tzdata ca-certificates fontconfig \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .
RUN chmod +x /app/start.sh

# ربات هر بار که کرش کند خودش دوباره بالا می‌آید (start.sh)
CMD ["/app/start.sh"]
