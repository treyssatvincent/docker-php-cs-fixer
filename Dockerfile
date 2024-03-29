FROM php:8.1.11-alpine

# Add entrypoint script
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

# Install PHP Code Standard Fixer - https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases
RUN curl -L -o /usr/local/bin/php-cs-fixer https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v3.9.5/php-cs-fixer.phar \
	&& chmod +x /usr/local/bin/php-cs-fixer \
	&& chmod +x /docker-entrypoint.sh

WORKDIR "/app"
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["php-cs-fixer"]
