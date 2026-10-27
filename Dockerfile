FROM php:8.3-fpm-alpine

RUN apk add --no-cache nginx libpq-dev libzip-dev oniguruma-dev icu-dev nodejs npm git unzip \
 && docker-php-ext-install pdo pdo_pgsql pdo_mysql mbstring zip bcmath intl opcache

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY . .

RUN composer install --no-dev --optimize-autoloader --no-interaction
RUN npm ci && npm run build && rm -rf node_modules

RUN chown -R www-data:www-data storage bootstrap/cache

COPY docker/nginx.conf /etc/nginx/http.d/default.conf
COPY docker/start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 10000
CMD ["/start.sh"]