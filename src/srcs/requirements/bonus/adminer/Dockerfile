FROM debian:buster

WORKDIR /var/www/adminer

RUN apt update && apt install -y php7.3 php7.3-fpm php7.3-mysql wget

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN service php7.3-fpm start

RUN wget -q https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php \
			-O 'index.php'

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
