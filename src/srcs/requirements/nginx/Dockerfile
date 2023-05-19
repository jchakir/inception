FROM debian:buster

ARG DOMAIN_NAME

RUN apt update && apt install -y nginx openssl

COPY conf/nginx.conf /etc/nginx/sites-enabled/${DOMAIN_NAME}

WORKDIR /root

RUN sed -i "s/<DOMAIN_NAME>/${DOMAIN_NAME}/g" \
		/etc/nginx/sites-enabled/${DOMAIN_NAME}

ENV INFO="/C=MA/ST=Casablanca/L=Casa/CN=*.${DOMAIN_NAME}"
RUN openssl req -x509 -sha256 -days 356 -nodes \
            -newkey rsa:2048 -subj $INFO \
            -keyout ssl.key -out ssl.crt

ENTRYPOINT ["nginx", "-g", "daemon off;"]
