# Базовий образ з Nginx
FROM nginx:alpine

# Видаляємо дефолтну сторінку Nginx
RUN rm -rf /usr/share/nginx/html/*

# Копіюємо наші HTML та CSS файли в контейнер
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Відкриваємо порт 80
EXPOSE 80
