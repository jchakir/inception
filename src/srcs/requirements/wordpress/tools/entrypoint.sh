#!/bin/sh

# first install wordpress if not.
wp core is-installed --allow-root
if [ $? -ne 0 ] ; then
	wp core install --allow-root \
		--url="https://${DOMAIN_NAME}" \
		--title="${TITLE}" \
		--admin_user="${WP_ADMIN}" \
		--admin_password="${WP_ADMIN_PASS}" \
		--admin_email="${WP_ADMIN}@student.1337.ma" \
		--skip-email

	wp user create --allow-root \
		${WP_USER} "${WP_USER}@student.1337.ma" \
		--user_pass=${WP_USER_PASSWORD} --role=author

	wp plugin install redis-cache --activate --allow-root
	wp redis enable --allow-root
fi

chown -R www-data:www-data /var/www
chmod -R g+w /var/www

echo " Wordpress starting php-fpm ....."

/usr/sbin/php-fpm7.3 --nodaemonize
