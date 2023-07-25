FROM dockette/php:5.5

LABEL "com.github.actions.name"="GA-PHPLint"
LABEL "com.github.actions.description"="Run PHP linter on PR"
LABEL "com.github.actions.icon"="aperture"
LABEL "com.github.actions.color"="blue"

LABEL version="0.0.2"
LABEL repository="https://github.com/justia/ga-phplint-5.5"
LABEL homepage="https://github.com/justia/ga-phplint-5.5"

RUN mkdir /phplint && cd /phplint && composer require overtrue/phplint && ln -s /phplint/vendor/bin/phplint /usr/local/bin/phplint

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
