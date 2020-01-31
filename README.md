# docker-php-cs-fixer
Docker image for [PHP Code Standard Fixer](https://cs.symfony.com/).

## Usage examples
### Gitlab CI

``` yml
stages:
  - test

job:test:lint:
  stage: test
  image: ninobysa/php-cs-fixer
  script:
    - php-cs-fixer fix --dry-run -vvv --diff ./src
```

### Local usage

``` bash
docker run --rm -v $(pwd):/app ninobysa/php-cs-fixer fix ./src
```

## Credit
Based on [phpqa/php-cs-fixer](https://github.com/phpqa/php-cs-fixer).
