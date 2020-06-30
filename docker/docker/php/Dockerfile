FROM php:7.2-fpm

WORKDIR /app

#RUN yes | pecl install xdebug \
#    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
#    && echo "xdebug.remote_enable = on" >> /usr/local/etc/php/conf.d/xdebug.ini \
#    && echo "xdebug.remote_autostart = on" >> /usr/local/etc/php/conf.d/xdebug.ini \
#    && echo "xdebug.remote_port=9000" >> /usr/local/etc/php/conf.d/xdebug.ini \
#    && echo "xdebug.profiler_output_dir = '/app/profilers/'" >> /usr/local/etc/php/conf.d/xdebug.ini \
#    && echo "xdebug.profiler_enable_trigger = on" >> /usr/local/etc/php/conf.d/xdebug.ini \
#    && echo "xdebug.idekey=PHPSTORM" >> /usr/local/etc/php/conf.d/xdebug.ini

COPY ./docker/php/config/php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y --no-install-recommends \
        webp \
        jpegoptim \
        optipng \
        g++ \
        git \
        curl \
        python-setuptools \
        libcurl4-openssl-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libxml2-dev \
        libicu-dev \
        exim4 \
        libpq-dev \
        libzip-dev \
        zip \
        memcached \
        libmemcached-dev \
        zlib1g-dev \
        libicu-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-install -j$(nproc) \
        gd \
        opcache \
        mysqli \
        pdo_mysql \
        zip \
        intl \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN git clone -b php7 https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached \
    && docker-php-ext-configure /usr/src/php/ext/memcached \
        --disable-memcached-sasl \
    && docker-php-ext-install /usr/src/php/ext/memcached \
    && rm -rf /usr/src/php/ext/memcached \
    && cd /etc \
    && sed -i 's/-m 64/-m 1024/g' memcached.conf \
    && echo '-I 3M' >> memcached.conf

# Install php-igbinary
RUN cd /usr/src/php/ext \
    && curl -fsSL https://github.com/igbinary/igbinary7/archive/master.tar.gz -o igbinary.tar.gz \
    && mkdir -p igbinary \
    && tar -xf igbinary.tar.gz -C igbinary --strip-components=1 \
    && rm igbinary.tar.gz \
    && docker-php-ext-install igbinary

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#CMD service memcached restart && tail -F /var/log/memcached.log