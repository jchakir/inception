FROM debian:buster

ARG MYSQL_HOST MYSQL_DB_NAME MYSQL_USER MYSQL_PASSWORD REDIS_HOST

WORKDIR /var/www/html

RUN apt update && apt install -y php7.3 php7.3-fpm php7.3-mysql \
		wget php7.3-redis 

RUN wget -q https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
		-O /usr/local/bin/wp && chmod +x /usr/local/bin/wp

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY tools /tools

RUN chmod +x /tools/entrypoint.sh /tools/wp-download.sh

RUN /tools/wp-download.sh

RUN service php7.3-fpm start

ENTRYPOINT ["/tools/entrypoint.sh"]
