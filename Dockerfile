# Dockerfile
# Используем минимальный образ NGINX
FROM nginx:alpine

# Удаляем дефолтные файлы NGINX
RUN rm -rf /usr/share/nginx/html/*

# Копируем исправленный конфиг
COPY config/default.conf /etc/nginx/conf.d/default.conf

# Копируем ВСЕ файлы проекта
COPY . /usr/share/nginx/html/

# Чистим ненужное (опционально)
RUN rm -rf /usr/share/nginx/html/.git /usr/share/nginx/html/.dockerignore /usr/share/nginx/html/Dockerfile

# Открытие порта 80
EXPOSE 80

# Запуск nginx
CMD ["nginx", "-g", "daemon off;"]
