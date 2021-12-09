# docker-php-cs-fixer
Docker image for [PHP Code Standard Fixer](https://cs.symfony.com/).

## Usage examples
### Gitlab CI

``` yml
# .gitlab-ci.yml
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

### PHPStorm

In the settings search for "PHP CS Fixer" under "Quality Tools" and add a "configuration" :

1) Click "..." then "+" and "..." again.
2) Click "+" & select "From Docker".
3) Set `ninobysa/php-cs-fixer` as "Image name" (you can use a specific version, for example: `ninobysa/php-cs-fixer:v3.3.1-php7.4`)
4) Click "Ok", wait for the installation check and click "Ok" on the "Cli Interpreters" window.
5) Select the newly added interpreter
6) Set `php-cs-fixer` as "PHP CS Fixer path".
7) You're done!

You can find these instructions as a video [here](https://peertube.fr/videos/embed/16c45684-5c74-4640-be3c-da5aa1b5ef3c?title=0&peertubeLink=0).
