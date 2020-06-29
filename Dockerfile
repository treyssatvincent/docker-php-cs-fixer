FROM php:7.4.7-alpine

# Install PHP Code Standard Fixer - https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases
COPY --from=composer:1.10.7 /usr/bin/composer /usr/bin/composer
RUN COMPOSER_HOME="/composer" \
	composer global require --prefer-dist --no-progress --no-suggest --dev friendsofphp/php-cs-fixer:2.16.4
ENV PATH /composer/vendor/bin:${PATH}

# Add entrypoint script
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

WORKDIR "/app"
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["php-cs-fixer"]
