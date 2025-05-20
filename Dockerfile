# Dockerfile
# Используем минимальный образ NGINX
FROM nginx:alpine

# 1. Копируем ваш кастомный конфиг поверх дефолтного
COPY config/nginx.conf /etc/nginx/nginx.conf

# 2. Копируем папку public туда, где nginx.conf её ищет
COPY public /usr/share/nginx/html/public

# 3. Копируем ассеты так, чтобы они были по /usr/share/nginx/html/assets
COPY assets /usr/share/nginx/html/assets

# Удаляем стандартный конфиг, чтобы не было «welcome page»
RUN rm /etc/nginx/conf.d/default.conf

# Открытие 80 порта
EXPOSE 80

# Запуск nginx
CMD ["nginx", "-g", "daemon off;"]
