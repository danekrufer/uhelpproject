# Dockerfile
# Используем минимальный образ NGINX
FROM nginx:alpine

# Копируем HTML, CSS, JS в стандартную директорию NGINX
COPY . /usr/share/nginx/html

# Удаляем стандартную конфигурацию и копируем свою при необходимости
# COPY nginx.conf /etc/nginx/nginx.conf

# Открываем порт 80 (если запускается локально)
EXPOSE 80
