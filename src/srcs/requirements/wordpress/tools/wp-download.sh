
if [ ! "$(ls -A)" ] ; then

	wp core download --allow-root

	wp config create --allow-root --skip-check \
		--dbhost=${MYSQL_HOST} --dbname=${MYSQL_DB_NAME} \
		--dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD}

	wp config set WP_REDIS_HOST ${REDIS_HOST} --allow-root
fi
