FROM debian:buster

RUN apt update && apt install -y wget tar  netcat

RUN wget -q https://github.com/portainer/portainer/releases/download/2.16.1/portainer-2.16.1-linux-amd64.tar.gz \
		-O portainer.tar.gz

RUN tar xfz portainer.tar.gz && rm -f portainer.tar.gz

ENTRYPOINT [ "/portainer/portainer", "--bind=:80" ]
