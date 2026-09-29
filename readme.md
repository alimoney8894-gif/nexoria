# Nexoria Self — سلف‌بات فارسی تلگرام

سلف‌بات فارسی برای تلگرام با ربات مدیریتی، ربات کمکی پنل دکمه‌ای و منشی هوش مصنوعی.

## نصب و اجرای محلی

```bash
pip install -r requirements.txt
cp .env.example .env    # مقادیر را پر کن
python main.py
```

`API_ID` و `API_HASH` را از [my.telegram.org/apps](https://my.telegram.org/apps) بگیر و `BOT_TOKEN` را از @BotFather.
قبل از اولین اجرا، فایل `supabase_schema.sql` را در Supabase → SQL Editor اجرا کن.

## استقرار روی Railway

1. پروژه را در GitHub آپلود کن.
2. در Railway: **New Project → Deploy from GitHub repo** و همین ریپو را انتخاب کن.
3. در تب **Variables** مقادیر `.env.example` را وارد کن (حداقل: `API_ID`, `API_HASH`, `BOT_TOKEN`, `DATABASE_URL`, `OWNER_TG_ID`).
4. Railway با `railway.json` / `Procfile` خودش `python main.py` را اجرا می‌کند. سرویس از نوع worker است و پورت لازم ندارد.

## دستورات تلگرام

| دستور | توضیح |
|---|---|
| `سلف روشن` / `سلف خاموش` | فعال یا غیرفعال کردن سلف |
| `وضعیت` | نمایش وضعیت قابلیت‌ها |
| `راهنما` | نمایش همه دستورات |
| `تنظیم دشمن` | ریپلای روی پیام کاربر |
| `منشی روشن` | منشی خودکار |
| `ضد حذف روشن` | فعال‌سازی ضد حذف |
| `فونت [0-8]` | تغییر فونت پیام‌ها |

راهنمای کامل: [docs/GUIDE.md](docs/GUIDE.md)
