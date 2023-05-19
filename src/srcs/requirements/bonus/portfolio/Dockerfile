FROM debian:buster

RUN apt update && apt install -y nginx

COPY app /app

COPY conf/nginx.conf /etc/nginx/sites-enabled/default

ENTRYPOINT ["nginx", "-g", "daemon off;"]
