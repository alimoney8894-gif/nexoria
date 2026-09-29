#!/bin/sh
# اجرای دائمی Nexoria Self: اگر پروسه به هر دلیلی بسته شد، بعد از چند ثانیه دوباره اجرا می‌شود.
DELAY=5
while true; do
  echo "▶️ Nexoria Self starting..."
  python main.py
  CODE=$?
  echo "⚠️ Nexoria Self exited with code $CODE. Restarting in ${DELAY}s..."
  sleep "$DELAY"
done
