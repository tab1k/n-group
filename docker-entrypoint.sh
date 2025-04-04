#!/bin/bash
# Останавливаем выполнение при ошибке
set -e

# Выполняем сборку статичных файлов
echo "Выполняем сборку статичных файлов..."
python src/manage.py collectstatic --noinput

# Запускаем сервер Django
echo "Запускаем Django-сервер..."
exec python src/manage.py runserver 0.0.0.0:8000
