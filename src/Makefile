###################################################
#                  Makefile for Docker            #
###################################################

DOMAIN=jchakir.42.fr
WPPATH=/home/jchakir/data/wordpress
DBPATH=/home/jchakir/data/database
COMPOSEFILE=./srcs/docker-compose.yml


stop:
	docker compose -f ${COMPOSEFILE} stop
start:
	docker compose -f ${COMPOSEFILE} start

updetack: init_local_conf
	docker compose -f ${COMPOSEFILE} up -d
upbuilddetach: init_local_conf
	docker compose -f ${COMPOSEFILE} up --build -d

up: init_local_conf
	docker compose -f ${COMPOSEFILE} up
upbuild: init_local_conf
	docker compose -f ${COMPOSEFILE} up --build

build: init_local_conf
	docker compose -f ${COMPOSEFILE} build
down:
	docker compose -f ${COMPOSEFILE} down

ps:
	docker compose -f ${COMPOSEFILE} ps
psall:
	docker compose -f ${COMPOSEFILE} ps -a

clean:
	docker system prune -af
fclean: clean
	rm -rf /home/jchakir/data/database
	rm -rf /home/jchakir/data/wordpress

checkconfig:
	docker compose -f ${COMPOSEFILE} config

init_local_conf:
	@grep " ${DOMAIN}" /etc/hosts || \
		echo 127.0.0.1 ${DOMAIN} >> /etc/hosts
	@grep " portfolio.${DOMAIN}" /etc/hosts || \
		echo 127.0.0.1 "portfolio.${DOMAIN}" >> /etc/hosts
	@grep " portainer.${DOMAIN}" /etc/hosts || \
		echo 127.0.0.1 "portainer.${DOMAIN}" >> /etc/hosts
	@[ -d ${WPPATH} ] || mkdir -p ${WPPATH}
	@[ -d ${DBPATH} ] || mkdir -p ${DBPATH}
